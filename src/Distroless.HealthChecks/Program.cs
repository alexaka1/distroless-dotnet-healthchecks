using Distroless.HealthChecks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

IHost host;

try
{
    var builder = Host.CreateApplicationBuilder(args);
    builder.Services.AddHostedService<HealthCheck>();
    builder.Logging.AddConsole();

    host = builder.Build();
}
catch (Exception e)
{
    Console.Error.WriteLine("Healthcheck failed to start");
    Console.Error.WriteLine(e);
    throw;
}

var logger = host.Services.GetRequiredService<ILogger<Program>>();
try
{
    host.Run();
}
catch (Exception e)
{
    logger.LogCritical(e, "Healthcheck terminated unexpectedly");
    throw;
}

return 0;
