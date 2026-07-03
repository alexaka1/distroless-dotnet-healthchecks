using Distroless.HealthChecks;
using Microsoft.Extensions.Configuration;

namespace Distroless.HealthChecks.Test;

public class ConsoleLogTests
{
    [Theory]
    [InlineData("None", "Default", false)]
    [InlineData("None", "Distroless.HealthChecks.Checks.SimpleHealthCheck", false)]
    [InlineData("Error", "Default", true)]
    [InlineData("Error", "Distroless.HealthChecks.Checks.SimpleHealthCheck", true)]
    public void IsEnabled_treats_none_as_disable_all(
        string configuredLevel,
        string category,
        bool errorLoggingEnabled)
    {
        var config = new ConfigurationBuilder()
            .AddInMemoryCollection(new Dictionary<string, string?>
            {
                [$"Logging:LogLevel:{category}"] = configuredLevel,
            })
            .Build();

        Assert.Equal(errorLoggingEnabled, ConsoleLog.IsEnabled(config, category, ConsoleLogLevel.Error));
        Assert.False(ConsoleLog.IsEnabled(config, category, ConsoleLogLevel.Debug));
    }
}
