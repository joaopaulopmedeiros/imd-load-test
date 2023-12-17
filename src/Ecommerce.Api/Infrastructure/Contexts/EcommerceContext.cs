namespace Ecommerce.Api.Infrastructure.Contexts;

public class EcommerceContext(DbContextOptions<EcommerceContext> options) : DbContext(options)
{
    public DbSet<Product> Products { get; set; } = null!;

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Product>(entity =>
        {
            entity.ToTable("products");
            entity.HasKey(product => product.Id);
            entity.Property(product => product.Id).HasColumnName("id");
            entity.Property(product => product.Title).HasColumnName("title");
            entity.Property(product => product.Sku).HasColumnName("sku");
            entity.Property(product => product.CurrentPrice).HasColumnName("current_price");
            entity.Property(product => product.OriginalPrice).HasColumnName("original_price");
            entity.Property(product => product.CreatedAt).HasColumnName("created_at");
            entity.Property(product => product.UpdatedAt).HasColumnName("updated_at");
        });
    }
}