namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class RuntimeDeps9AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<RuntimeDeps9AotData>(output, testContext);

public abstract class RuntimeDeps9AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime-deps9-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        foreach (var image in images)
        {
            data.Add(image.Image, image.Tag, "9.0", "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
