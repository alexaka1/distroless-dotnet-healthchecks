using Xunit.Abstractions;

namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class AspNet9AotContainerTest(ITestOutputHelper output) : HealthyContainerTest(output)
{
    public static TheoryData<string, string, string, string> Data
    {
        get
        {
            string[] images = ["mcr.microsoft.com/dotnet/aspnet", "mcr.microsoft.com/dotnet/nightly/aspnet"];
            string[] tags =
            [
                "9.0",
                "9.0-noble",
                "9.0-noble-chiseled",
                "9.0-azurelinux3.0-distroless",
            ];
            var data = new TheoryData<string, string, string, string>();
            foreach (string image in images)
            {
                foreach (string tag in tags)
                {
                    data.Add(image, tag, "9.0", "test/Distroless.Sample.WebApp/aot.Dockerfile");
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
