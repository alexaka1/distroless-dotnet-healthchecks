namespace Distroless.HealthChecks.Test.HealthyTests.Net9;

public class RuntimeDeps9ContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<RuntimeDeps9Data>(output, testContext);

public abstract class RuntimeDeps9Data : ITestData
{
    public static TheoryData<string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime-deps9-aot.bases.Dockerfile");
        var data = new TheoryData<string, string, string>();

        string baseImageType = Utils.CurrentBaseImageType();
        foreach (var image in Utils.FilterByBaseImageType(images, baseImageType))
        {
            data.Add(image.Image, image.Tag, "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
