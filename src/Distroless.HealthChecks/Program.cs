using Distroless.HealthChecks;
using Distroless.HealthChecks.Checks;
using Distroless.HealthChecks.Configuration;

HealthStatus healthStatus;
try
{
    Utils.SetCurrentDirectoryToBinaryLocation();
    var configuration = AppConfiguration.Load(Directory.GetCurrentDirectory(), args);
    var healthCheckOptions = configuration.BindHealthCheckOptions();
    var features = configuration.BindFeatures();
    HealthCheckOptionsValidator.Validate(configuration, healthCheckOptions, features);

    var healthCheck = new SimpleHealthCheck(healthCheckOptions, configuration);
    healthStatus = await HealthCheckRunner.RunAsync(configuration, healthCheck);
}
catch (Exception e)
{
    Console.Error.WriteLine("Healthcheck failed to start");
    Console.Error.WriteLine(e);
    return StatusResult.ExitCodes.UnHealthy;
}

return StatusResult.ToExitCode(healthStatus);
