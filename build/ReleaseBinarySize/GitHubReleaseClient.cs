using System.Net.Http.Headers;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace ReleaseBinarySize;

internal sealed class GitHubReleaseClient(HttpClient httpClient) : IDisposable
{
    private const string PackageTagPrefix = "distroless-dotnet-healthchecks@";

    public async Task<string?> GetPreviousReleaseBodyAsync(
        string repository,
        string currentTag,
        CancellationToken cancellationToken = default)
    {
        var releases = await GetReleasesAsync(repository, cancellationToken);
        var previousTag = releases
            .Select(release => release.TagName)
            .FirstOrDefault(tag =>
                tag.StartsWith(PackageTagPrefix, StringComparison.Ordinal) &&
                !string.Equals(tag, currentTag, StringComparison.Ordinal));

        if (previousTag is null)
        {
            return null;
        }

        using var response = await httpClient.GetAsync(
            $"repos/{repository}/releases/tags/{Uri.EscapeDataString(previousTag)}",
            cancellationToken);
        response.EnsureSuccessStatusCode();

        await using var stream = await response.Content.ReadAsStreamAsync(cancellationToken);
        var release = await JsonSerializer.DeserializeAsync<GitHubRelease>(
            stream,
            cancellationToken: cancellationToken);

        return release?.Body;
    }

    private async Task<IReadOnlyList<GitHubRelease>> GetReleasesAsync(
        string repository,
        CancellationToken cancellationToken)
    {
        var releases = new List<GitHubRelease>();
        var page = 1;

        while (true)
        {
            using var response = await httpClient.GetAsync(
                $"repos/{repository}/releases?per_page=100&page={page}",
                cancellationToken);
            response.EnsureSuccessStatusCode();

            await using var stream = await response.Content.ReadAsStreamAsync(cancellationToken);
            var pageReleases = await JsonSerializer.DeserializeAsync<List<GitHubRelease>>(
                stream,
                cancellationToken: cancellationToken) ?? [];

            if (pageReleases.Count == 0)
            {
                break;
            }

            releases.AddRange(pageReleases);
            page++;
        }

        return releases;
    }

    public static GitHubReleaseClient CreateFromEnvironment()
    {
        var token = Environment.GetEnvironmentVariable("GH_TOKEN");
        var httpClient = new HttpClient
        {
            BaseAddress = new Uri("https://api.github.com/"),
        };
        httpClient.DefaultRequestHeaders.UserAgent.ParseAdd("distroless-dotnet-healthchecks-release-binary-size");
        httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/vnd.github+json"));

        if (!string.IsNullOrWhiteSpace(token))
        {
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
        }

        return new GitHubReleaseClient(httpClient);
    }

    public void Dispose() => httpClient.Dispose();

    private sealed class GitHubRelease
    {
        [JsonPropertyName("tag_name")]
        public string TagName { get; init; } = string.Empty;

        [JsonPropertyName("body")]
        public string? Body { get; init; }
    }
}
