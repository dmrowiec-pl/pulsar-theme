-- Declare variables
DECLARE @customer_id INT, @customer_name VARCHAR(100), @order_total DECIMAL(10,2);

-- Set variables
SET @customer_id = 123;
SET @customer_name = 'John Smith';
SET @order_total = 99.99;

-- Create a temporary table
CREATE TABLE #temp (
   id INT,
   product_name VARCHAR(100),
   quantity INT,
   price DECIMAL(10,2)
);

-- Insert data into the temporary table
INSERT INTO #temp (id, product_name, quantity, price)
VALUES (1, 'Product 1', 2, 49.99),
       (2, 'Product 2', 1, 50.00);

-- Select data from the temporary table
SELECT * FROM #temp;

-- Use a case statement
SELECT
   id,
   product_name,
   quantity,
   price,
   (CASE WHEN quantity > 1 THEN price * 0.9 ELSE price END) AS discounted_price
FROM #temp;

-- Use a common table expression (CTE)
WITH order_items AS (
   SELECT * FROM #temp
)
SELECT * FROM order_items;

-- Use a stored procedure
CREATE PROCEDURE get_customer_orders @customer_id INT
AS
BEGIN
   SELECT * FROM orders WHERE customer_id = @customer_id;
END;

-- Call the stored procedure
EXEC get_customer_orders @customer_id;

-- Drop the temporary table and the stored procedure
DROP TABLE #temp;
DROP PROCEDURE get_customer_orders;
