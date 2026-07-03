using System.Buffers;
using System.Globalization;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace Distroless.HealthChecks.Checks;

internal static class PlainHttpHealthClient
{
    private const int DefaultHttpPort = 80;
    private const int ReceiveBufferSize = 4096;

    public static async Task<(HttpStatusCode StatusCode, Exception? Error)> GetAsync(
        Uri uri,
        CancellationToken cancellationToken)
    {
        if (!string.Equals(uri.Scheme, Uri.UriSchemeHttp, StringComparison.OrdinalIgnoreCase))
        {
            return (HttpStatusCode.BadRequest,
                new NotSupportedException($"Only http:// URIs are supported. Received '{uri.Scheme}'."));
        }

        try
        {
            var port = uri.IsDefaultPort ? DefaultHttpPort : uri.Port;
            using var tcpClient = new TcpClient();
            await tcpClient.ConnectAsync(uri.Host, port, cancellationToken);

            await using var stream = tcpClient.GetStream();
            var pathAndQuery = string.IsNullOrEmpty(uri.PathAndQuery) ? "/" : uri.PathAndQuery;
            var request = $"GET {pathAndQuery} HTTP/1.1\r\nHost: {uri.Host}\r\nConnection: close\r\n\r\n";
            var requestBytes = Encoding.ASCII.GetBytes(request);
            await stream.WriteAsync(requestBytes, cancellationToken);

            var statusCode = await ReadStatusCodeAsync(stream, cancellationToken);
            return (statusCode, null);
        }
        catch (Exception e) when (e is not OperationCanceledException)
        {
            return (HttpStatusCode.ServiceUnavailable, e);
        }
    }

    private static async Task<HttpStatusCode> ReadStatusCodeAsync(
        NetworkStream stream,
        CancellationToken cancellationToken)
    {
        var buffer = ArrayPool<byte>.Shared.Rent(ReceiveBufferSize);
        try
        {
            var totalRead = 0;
            while (totalRead < buffer.Length)
            {
                var read = await stream.ReadAsync(buffer.AsMemory(totalRead), cancellationToken);
                if (read == 0)
                {
                    break;
                }

                totalRead += read;
                if (ContainsEndOfHeaders(buffer, totalRead))
                {
                    break;
                }
            }

            var statusLineLength = IndexOfNewLine(buffer, totalRead);
            if (statusLineLength <= 0)
            {
                return HttpStatusCode.BadGateway;
            }

            var statusLine = Encoding.ASCII.GetString(buffer, 0, statusLineLength);
            return ParseStatusCode(statusLine);
        }
        finally
        {
            ArrayPool<byte>.Shared.Return(buffer);
        }
    }

    private static bool ContainsEndOfHeaders(byte[] buffer, int length)
    {
        for (var i = 0; i < length - 3; i++)
        {
            if (buffer[i] == '\r' && buffer[i + 1] == '\n' && buffer[i + 2] == '\r' && buffer[i + 3] == '\n')
            {
                return true;
            }
        }

        return false;
    }

    private static int IndexOfNewLine(byte[] buffer, int length)
    {
        for (var i = 0; i < length - 1; i++)
        {
            if (buffer[i] == '\r' && buffer[i + 1] == '\n')
            {
                return i;
            }
        }

        return length;
    }

    private static HttpStatusCode ParseStatusCode(string statusLine)
    {
        // HTTP/1.1 200 OK
        var parts = statusLine.Split(' ', StringSplitOptions.RemoveEmptyEntries);
        if (parts.Length >= 2 &&
            int.TryParse(parts[1], NumberStyles.None, CultureInfo.InvariantCulture, out var code) &&
            Enum.IsDefined(typeof(HttpStatusCode), code))
        {
            return (HttpStatusCode)code;
        }

        return HttpStatusCode.BadGateway;
    }
}
