using Distroless.Sample.WebApp;

WebApplication app;
try
{
    var builder = WebApplication.CreateSlimBuilder(args);

    builder.Logging.ClearProviders().AddConsole();

    builder.Services.ConfigureHttpJsonOptions(options =>
    {
        options.SerializerOptions.TypeInfoResolverChain.Insert(0, AppJsonSerializerContext.Default);
    });

    app = builder.Build();
}
catch (Exception e)
{
    Console.WriteLine("Error building application:");
    Console.WriteLine(e);
    throw;
}

var logger = app.Logger;
try
{
    var sampleTodos = new Todo[]
    {
        new(1, "Walk the dog"),
        new(2, "Do the dishes", DateOnly.FromDateTime(DateTime.Now)),
        new(3, "Do the laundry", DateOnly.FromDateTime(DateTime.Now.AddDays(1))),
        new(4, "Clean the bathroom"),
        new(5, "Clean the car", DateOnly.FromDateTime(DateTime.Now.AddDays(2))),
    };

    var todosApi = app.MapGroup("/todos");
    todosApi.MapGet("/", () => sampleTodos);
    todosApi.MapGet("/{id:int}", (int id) =>
        sampleTodos.FirstOrDefault(a => a.Id == id) is { } todo ? Results.Ok(todo) : Results.NotFound());

    app.MapGet("/healthz/{desired:int?}", (int? desired) => desired switch
    {
        null => Results.Ok(),
        0 => Results.Ok(new HealthStatus("Healthy")),
        1 => Results.Json(new HealthStatus("Unhealthy"), AppJsonSerializerContext.Default.HealthStatus,
            statusCode: StatusCodes.Status500InternalServerError),
        2 => Results.Json(new HealthStatus("Degraded"), AppJsonSerializerContext.Default.HealthStatus,
            statusCode: StatusCodes.Status500InternalServerError),
        _ => Results.BadRequest(),
    });

    app.Run();
}
catch (Exception e)
{
    logger.LogCritical(e, "Application has crashed");
    throw;
}
