namespace Distroless.HealthChecks.Test.HealthyTests.Net8;

public class RuntimeDeps8AotContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<RuntimeDeps8AotData>(output, testContext);

public abstract class RuntimeDeps8AotData : ITestData
{
    public static TheoryData<string, string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime-deps8-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string, string>();
        foreach (var image in images)
        {
            data.Add(image.Image, image.Tag, "8.0", "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
