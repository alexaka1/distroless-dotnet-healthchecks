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

        // Filter images based on BASE_IMAGE_TYPE environment variable
        var baseImageType = Environment.GetEnvironmentVariable("BASE_IMAGE_TYPE") ?? "ubuntu-chiseled";

        foreach (var image in images)
        {
            // Only include images that match the current base image type
            if (ShouldIncludeImage(image, baseImageType))
            {
                data.Add(image.Image, image.Tag, "8.0", "test/Distroless.Sample.WebApp/Dockerfile");
            }
        }

        return data;
    }

    private static bool ShouldIncludeImage(DockerImage image, string baseImageType)
    {
        return baseImageType switch
        {
            "ubuntu-chiseled" => !image.Tag.Contains("alpine"),
            "alpine" => image.Tag.Contains("alpine"),
            _ => true // Include all if no specific filter
        };
    }
}
