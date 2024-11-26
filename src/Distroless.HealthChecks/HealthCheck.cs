using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace Distroless.HealthChecks;

public class HealthCheck : BackgroundService
{
    private readonly IHost _host;
    private readonly ILogger<HealthCheck> _logger;
    private readonly HealthCheckClient _client;
    private readonly IOptions<HealthCheckOptions> _options;
    private readonly StatusResult _statusResult;

    public HealthCheck(IHost host,
        ILogger<HealthCheck> logger,
        HealthCheckClient client,
        IOptions<HealthCheckOptions> options, StatusResult statusResult)
    {
        _host = host;
        _logger = logger;
        _client = client;
        _options = options;
        _statusResult = statusResult;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        foreach (var uri in _options.Value.Uris)
        {
            using var result = await _client.SimpleCheck(uri);
            if (result is null)
            {
                _logger.LogError("Health check result for {Uri} is null", uri);
                _statusResult.IsHealthy = false;
                break;
            }
            _logger.LogInformation("Health check result for {Uri}: {StatusCode}", uri, result.StatusCode);
        }

        await _host.StopAsync(stoppingToken);
    }
}
