namespace Ecommerce.Api.IoC;

public static class DependencyInjector
{
    public static IServiceCollection AddApiServices(this IServiceCollection services)
    {
        services.AddScoped<ISearchProductService, SearchProductService>();
        return services;
    }
}
