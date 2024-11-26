using Distroless.HealthChecks;
using Distroless.HealthChecks.Checks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Diagnostics.HealthChecks;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

IHost host;
try
{
    var builder = Host.CreateApplicationBuilder(args);
    builder.Configuration.AddJsonFile("healthchecks.json", true);
    var config = builder.Configuration;
    builder.Services.AddOptions<HealthCheckOptions>()
        .Bind(config)
        .ValidateOnStart();

    builder.Logging.ClearProviders();
    builder.Logging.AddConsole();

    builder.Services.AddHttpClient(SimpleHealthCheck.Name);
    builder.Services.AddSingleton<IPostConfigureOptions<HealthCheckOptions>, PostConfigureHealthCheckOptions>();
    builder.Services.AddSingleton<StatusResult>();

    builder.Services.AddHealthChecks()
        .AddCheck<SimpleHealthCheck>(SimpleHealthCheck.Name, tags: ["simple"]);

    builder.Services.AddHostedService<HealthCheckHostedService>();
    host = builder.Build();
}
catch (Exception e)
{
    Console.Error.WriteLine("Healthcheck failed to start");
    Console.Error.WriteLine(e);
    return StatusResult.ExitCodes.UnHealthy;
}

var logger = host.Services.GetRequiredService<ILogger<Program>>();
var result = host.Services.GetRequiredService<StatusResult>();
try
{
    host.Run();
}
catch (Exception e)
{
    logger.LogCritical(e, "Healthcheck terminated unexpectedly");
    return StatusResult.ExitCodes.UnHealthy;
}

return result.HealthStatus switch
{
    HealthStatus.Healthy => StatusResult.ExitCodes.Healthy,
    _ => StatusResult.ExitCodes.UnHealthy,
};
