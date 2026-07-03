using Distroless.HealthChecks;
using Distroless.HealthChecks.Features;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;

IHost host;
try
{
    Utils.SetCurrentDirectoryToBinaryLocation();
    var settings = new HostApplicationBuilderSettings
    {
        Args = args,
        Configuration = new ConfigurationManager(),
        ContentRootPath = Directory.GetCurrentDirectory(),
    };
    settings.Configuration.AddEnvironmentVariables("DISTROLESS_HEALTHCHECKS_");
    var builder = Host.CreateApplicationBuilder(settings);
    var config = builder.Configuration;
    builder.Services
        .AddSingleton<IValidateOptions<HealthCheckOptions>, HealthCheckOptionsValidator>()
        .AddOptions<HealthCheckOptions>()
        .Bind(config)
        .ValidateOnStart();
    builder.Services.AddOptions<Features>()
        .Bind(config.GetSection(Features.Key))
        .ValidateOnStart();

    builder.Services.AddSingleton<IPostConfigureOptions<HealthCheckOptions>, PostConfigureHealthCheckOptions>();
    builder.Services.AddSingleton<StatusResult>();

    builder.Services.AddHostedService<HealthCheckHostedService>();
    host = builder.Build();
}
catch (Exception e)
{
    Console.Error.WriteLine("Healthcheck failed to start");
    Console.Error.WriteLine(e);
    return StatusResult.ExitCodes.UnHealthy;
}

var result = host.Services.GetRequiredService<StatusResult>();
try
{
    host.Run();
}
catch (Exception e)
{
    Console.Error.WriteLine("Healthcheck terminated unexpectedly");
    Console.Error.WriteLine(e);
    return StatusResult.ExitCodes.UnHealthy;
}

return StatusResult.ToExitCode(result.HealthStatus);
