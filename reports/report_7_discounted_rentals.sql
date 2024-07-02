-- database: ../school.db
-- Calculate potential revenue increase for equipment rentals in 2024
SELECT SUM(rental_fee * 0.9) AS discounted_total_revenue_2024
FROM rentals
WHERE strftime('%Y', rental_date) = '2024';
