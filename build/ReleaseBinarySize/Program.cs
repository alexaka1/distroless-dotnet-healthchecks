namespace ReleaseBinarySize;

internal static class Program
{
    public static async Task<int> Main(string[] args)
    {
        if (args.Length == 0)
        {
            PrintUsage();
            return 1;
        }

        try
        {
            return args[0] switch
            {
                "measure" => await RunMeasureAsync(args[1..]),
                "append-release" => await RunAppendReleaseAsync(args[1..]),
                _ => UnknownCommand(args[0]),
            };
        }
        catch (Exception exception)
        {
            await Console.Error.WriteLineAsync(exception.Message);
            return 1;
        }
    }

    private static async Task<int> RunMeasureAsync(string[] args)
    {
        var options = ParseOptions(args);
        var digest = RequireOption(options, "digest");
        var variant = RequireOption(options, "variant");
        var platform = RequireOption(options, "platform");
        var output = RequireOption(options, "output");

        await DockerBinaryMeasurer.MeasureAsync(digest, variant, platform, output);
        return 0;
    }

    private static async Task<int> RunAppendReleaseAsync(string[] args)
    {
        var options = ParseOptions(args);
        var sizesDirectory = RequireOption(options, "sizes-dir");
        var changesFile = RequireOption(options, "changes-file");
        var repository = RequireOption(options, "repo");
        var tag = RequireOption(options, "tag");

        using var githubClient = GitHubReleaseClient.CreateFromEnvironment();
        await ReleaseNotesAppender.AppendAsync(
            sizesDirectory,
            changesFile,
            repository,
            tag,
            githubClient);

        return 0;
    }

    private static Dictionary<string, string> ParseOptions(string[] args)
    {
        var options = new Dictionary<string, string>(StringComparer.Ordinal);

        for (var index = 0; index < args.Length; index++)
        {
            var argument = args[index];
            if (!argument.StartsWith("--", StringComparison.Ordinal))
            {
                throw new InvalidOperationException($"Unknown argument: {argument}");
            }

            var key = argument[2..];
            if (index + 1 >= args.Length)
            {
                throw new InvalidOperationException($"Missing value for --{key}");
            }

            options[key] = args[++index];
        }

        return options;
    }

    private static string RequireOption(IReadOnlyDictionary<string, string> options, string key)
    {
        if (!options.TryGetValue(key, out var value) || string.IsNullOrWhiteSpace(value))
        {
            throw new InvalidOperationException($"Missing required option --{key}");
        }

        return value;
    }

    private static int UnknownCommand(string command)
    {
        Console.Error.WriteLine($"Unknown command: {command}");
        PrintUsage();
        return 1;
    }

    private static void PrintUsage()
    {
        Console.Error.WriteLine(
            """
            Usage:
              ReleaseBinarySize measure --digest <digest> --variant <variant> --platform <platform> --output <dir>
              ReleaseBinarySize append-release --sizes-dir <dir> --changes-file <file> --repo <owner/repo> --tag <tag>
            """);
    }
}
