namespace Ecommerce.Api.Requests;

public class PaginatedRequest
{
    public int Page { get; set; } = 1;
    public int Size { get; set; } = 10;
}

public class SearchProductRequest : PaginatedRequest
{
    public string? Title { get; set; }
    public int Sku { get; set; }
}
