namespace Distroless.HealthChecks.Test.HealthyTests;

public interface ITestData
{
    public static abstract TheoryData<string, string, string, string> GetTheoryData();
}
