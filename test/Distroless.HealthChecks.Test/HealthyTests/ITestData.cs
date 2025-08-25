namespace Distroless.HealthChecks.Test.HealthyTests;

public interface ITestData
{
    static abstract TheoryData<string, string, string, string> GetTheoryData();
}
