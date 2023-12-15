namespace Ecommerce.Api.Models;

public class Product
{
    public Guid Id { get; set; }
    public string? Title { get; set; }
    public int Sku { get; set; }
    public decimal CurrentPrice { get; set; }
    public decimal OriginalPrice { get; set; }
    public int Quantity { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime? UpdatedAt { get; set; }
}
