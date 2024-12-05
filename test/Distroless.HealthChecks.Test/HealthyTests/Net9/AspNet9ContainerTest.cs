namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class AspNet9ContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<AspNet9Data>(output, testContext);

public abstract class AspNet9Data : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.aspnet9.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        foreach (var image in images)
        {
            data.Add(image.Image, image.Tag, "9.0", "test/Distroless.Sample.WebApp/chiseled.Dockerfile");
        }

        return data;
    }
}
