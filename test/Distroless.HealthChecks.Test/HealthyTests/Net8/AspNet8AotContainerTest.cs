using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test.HealthyTests.Net8;

public class AspNet8AotContainerTest(ITestOutputHelper output) : HealthyContainerTest(output)
{
    public static TheoryData<string, string, string, string> Data
    {
        get
        {
            string[] images = ["mcr.microsoft.com/dotnet/aspnet", "mcr.microsoft.com/dotnet/nightly/aspnet"];
            string[] tags =
            [
                "8.0",
                "8.0-noble",
                "8.0-jammy",
                // "8.0-alpine", // this is failing, however the purpose of the project is to support distroless images, of which there is no alpine variant
                "8.0-noble-chiseled",
                "8.0-jammy-chiseled",
                "8.0-azurelinux3.0-distroless",
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

                    data.Add(image, tag, "8.0", "test/Distroless.Sample.WebApp/aot.Dockerfile");
                }
            }

            return data;
        }
    }

    [Theory]
    [MemberData(nameof(Data))]
    protected async Task Container_is_healthy(string image, string runtimeTag, string targetFramework,
        string dockerfile)
    {
        await ContainerIsHealthy(image, runtimeTag, targetFramework, dockerfile);
    }
}
