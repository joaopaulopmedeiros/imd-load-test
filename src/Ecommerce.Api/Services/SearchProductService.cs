namespace Ecommerce.Api.Services;

public class SearchProductService(EcommerceContext dbContext) : ISearchProductService
{
    private readonly EcommerceContext _dbContext = dbContext;

    public async Task<IEnumerable<Product>> SearchAsync(SearchProductRequest request)
    {
       return await _dbContext.Products
       .Where(product => string.IsNullOrEmpty(request.Title) || (!string.IsNullOrEmpty(product.Title) && product.Title.Contains(request.Title)))
       .Where(product => request.Sku <= 0 || product.Sku == request.Sku)
       .Skip((request.Page -1) * request.Size)
       .Take(request.Size)
       .AsNoTracking()
       .ToListAsync();
    }
}
