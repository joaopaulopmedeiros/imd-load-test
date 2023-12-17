CREATE TABLE products (
    id CHAR(36) PRIMARY KEY,
    title VARCHAR(255),
    sku INT NOT NULL,
    current_price DECIMAL(10, 2) NOT NULL,
    original_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    CONSTRAINT chk_id_format CHECK (CHAR_LENGTH(Id) = 36)
);
INSERT INTO products (id, title, sku, current_price, original_price, quantity, created_at) 
VALUES (UUID(), 'Product 1', 52003892, 950.99, 1000.00, 10, NOW());