namespace Distroless.HealthChecks.Test.HealthyTests.Net8;

public class AspNet8AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<AspNet8AotData>(output, testContext);

public abstract class AspNet8AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.aspnet8-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        foreach (var image in images)
        {
            data.Add(image.Image, image.Tag, "8.0", "test/Distroless.Sample.WebApp/aot.Dockerfile");
        }

        return data;
    }
}
