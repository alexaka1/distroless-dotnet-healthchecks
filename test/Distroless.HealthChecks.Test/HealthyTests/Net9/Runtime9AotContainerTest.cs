namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class Runtime9AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<Runtime9AotData>(output, testContext);

public abstract class Runtime9AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        string[] images = ["mcr.microsoft.com/dotnet/runtime", "mcr.microsoft.com/dotnet/nightly/runtime"];
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
