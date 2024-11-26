using Distroless.HealthChecks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

IHost host;
try
{
    var builder = Host.CreateApplicationBuilder(args);
    builder.Services.AddHostedService<HealthCheck>()
        .AddHttpClient<HealthCheckClient>();
    builder.Configuration.AddJsonFile("healthchecks.json", optional: true);
    var config = builder.Configuration;
    builder.Services.AddOptions<HealthCheckOptions>()
        .Bind(config)
        .ValidateOnStart();
    builder.Services.AddSingleton<IPostConfigureOptions<HealthCheckOptions>, PostConfigureHealthCheckOptions>();
    builder.Services.AddSingleton<StatusResult>();
    builder.Logging.AddConsole();
    builder.Services.AddHealthChecks();

    host = builder.Build();
}
catch (Exception e)
{
    Console.Error.WriteLine("Healthcheck failed to start");
    Console.Error.WriteLine(e);
    return 1;
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
    return 1;
}

return result.IsHealthy switch
{
    true => 0,
    _ => 1,
};
