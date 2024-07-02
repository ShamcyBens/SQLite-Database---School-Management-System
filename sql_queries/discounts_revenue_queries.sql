-- database: /path/to/database.db
-- Drop and recreate the table with correct schema
DROP TABLE IF EXISTS discounts_revenue;
CREATE TABLE IF NOT EXISTS discounts_revenue (
    discount_id INTEGER PRIMARY KEY,
    rental_id INTEGER,
    discount_amount DECIMAL(10, 2),
    year INTEGER -- Added missing column
);

-- Inserting sample data into discounts_revenue table
-- Assuming a single row with calculated data
INSERT INTO discounts_revenue (discount_id, rental_id, discount_amount, year)
VALUES
    (1, 1, 5000.00, 2024); -- Replace with your calculated value
