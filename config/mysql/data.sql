CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE IF NOT EXISTS products (
    id CHAR(36) PRIMARY KEY,
    title VARCHAR(255),
    sku INT NOT NULL,
    current_price DECIMAL(10, 2) NOT NULL,
    original_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    CONSTRAINT chk_id_format CHECK (CHAR_LENGTH(id) = 36)
);

DELIMITER //
CREATE PROCEDURE insert_thousand_products()
BEGIN
  DECLARE i INT DEFAULT 1;

  WHILE i <= 1000 DO
    INSERT INTO products (id, title, sku, current_price, original_price, quantity, created_at)
    VALUES (UUID(), CONCAT('Product ', i), 52003892 + i, 950.99, 1000.00, 10, NOW());

    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

CALL insert_thousand_products;
