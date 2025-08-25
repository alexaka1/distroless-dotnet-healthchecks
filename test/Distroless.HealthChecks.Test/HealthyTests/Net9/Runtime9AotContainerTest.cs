namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class Runtime9AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<Runtime9AotData>(output, testContext);

public abstract class Runtime9AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime9-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        string baseImageType = Utils.CurrentBaseImageType();
        foreach (var image in Utils.FilterByBaseImageType(images, baseImageType))
        {
            data.Add(image.Image, image.Tag, "9.0", "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
