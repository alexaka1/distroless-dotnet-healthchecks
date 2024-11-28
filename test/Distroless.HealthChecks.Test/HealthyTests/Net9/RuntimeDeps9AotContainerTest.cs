using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class RuntimeDeps9AotContainerTest(ITestOutputHelper output) : HealthyContainerTest<RuntimeDeps9AotData>(output);

public abstract class RuntimeDeps9AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        string[] images =
            ["mcr.microsoft.com/dotnet/runtime-deps", "mcr.microsoft.com/dotnet/nightly/runtime-deps"];
        string[] tags =
        [
            "9.0",
            "9.0-noble",
            "9.0-noble-chiseled",
            "9.0-azurelinux3.0-distroless",
            "9.0-noble-chiseled-aot",
            "9.0-azurelinux3.0-distroless-aot",
        ];
        var data = new TheoryData<string, string, string, string>();
        foreach (string image in images)
        {
            foreach (string tag in tags)
            {
                if (tag.Contains("aot") && !image.Contains("nightly"))
                {
                    continue;
                }

                data.Add(image, tag, "9.0", "test/Distroless.Sample.WebApp/aot.Dockerfile");
            }
        }

        return data;
    }
}
