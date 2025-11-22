namespace Distroless.HealthChecks.Test.HealthyTests.Net10;

public class RuntimeDeps10ContainerTest(ITestOutputHelper output, ITestContextAccessor testContext)
    : HealthyContainerTest<RuntimeDeps10Data>(output, testContext);

public abstract class RuntimeDeps10Data : ITestData
{
    public static TheoryData<string, string, string> GetTheoryData()
    {
        var images =
            Utils.GetImageTagsFromDockerfile(
                "test/Distroless.Sample.WebApp/healthyContainerTest.runtime-deps10.bases.Dockerfile");
        var data = new TheoryData<string, string, string>();

        string baseImageType = Utils.CurrentBaseImageType();
        foreach (var image in Utils.FilterByBaseImageType(images, baseImageType))
        {
            data.Add(image.Image, image.Tag, "test/Distroless.Sample.WebApp/Dockerfile");
        }

        return data;
    }
}
