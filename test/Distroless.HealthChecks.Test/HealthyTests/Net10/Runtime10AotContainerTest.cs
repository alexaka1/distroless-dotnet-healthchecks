namespace Distroless.HealthChecks.Test.HealthyTests.Net10;

public class Runtime10AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<Runtime10AotData>(output, testContext);

public abstract class Runtime10AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime10-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        foreach (var image in images)
        {
            data.Add(image.Image, image.Tag, "10.0", "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
