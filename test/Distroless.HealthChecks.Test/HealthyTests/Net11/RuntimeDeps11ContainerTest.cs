namespace Distroless.HealthChecks.Test.HealthyTests.Net11;

public class RuntimeDeps11ContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<RuntimeDeps11Data>(output, testContext);

public abstract class RuntimeDeps11Data : ITestData
{
    public static TheoryData<string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime-deps11.bases.Dockerfile");
        var data = new TheoryData<string, string, string>();

        string baseImageType = Utils.CurrentBaseImageType();
        foreach (var image in Utils.FilterByBaseImageType(images, baseImageType))
        {
            data.Add(image.Image, image.Tag, "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
