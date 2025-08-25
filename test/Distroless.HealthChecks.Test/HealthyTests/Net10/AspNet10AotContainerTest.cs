namespace Distroless.HealthChecks.Test.HealthyTests.Net10;

public class AspNet10AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<AspNet10AotData>(output, testContext);

public abstract class AspNet10AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.aspnet10-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        var baseImageType = Utils.CurrentBaseImageType();
        foreach (var image in Utils.FilterByBaseImageType(images, baseImageType))
        {
            data.Add(image.Image, image.Tag, "10.0", "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
