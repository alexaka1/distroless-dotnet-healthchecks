namespace Distroless.HealthChecks;

public class HealthCheckClient(HttpClient httpClient)
{
    public async Task<HttpResponseMessage?> SimpleCheck(Uri uri)
    {
        try
        {
            var response = await httpClient.GetAsync(uri);
            return response;
        }
        catch(Exception e)
        {
            Console.WriteLine(e);
        }
        return null;
    }
}
