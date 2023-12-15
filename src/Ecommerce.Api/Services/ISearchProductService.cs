namespace Ecommerce.Api.Services;

public interface ISearchProductService
{
    public Task<IEnumerable<Product>> SearchAsync(SearchProductRequest request);
}
