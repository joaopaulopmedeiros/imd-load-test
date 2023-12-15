namespace Ecommerce.Api.Services;

public class SearchProductService : ISearchProductService
{
    public async Task<IEnumerable<Product>> SearchAsync(SearchProductRequest request)
    {
        return await Task.FromResult(Enumerable.Empty<Product>());
    }
}
