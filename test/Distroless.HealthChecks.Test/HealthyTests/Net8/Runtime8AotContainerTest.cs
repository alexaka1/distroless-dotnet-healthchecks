namespace Distroless.HealthChecks.Test.HealthyTests.Net8;

public class Runtime8AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<Runtime8AotData>(output, testContext);

public abstract class Runtime8AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime8-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        foreach (var image in images)
        {
            data.Add(image.Image, image.Tag, "8.0", "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
