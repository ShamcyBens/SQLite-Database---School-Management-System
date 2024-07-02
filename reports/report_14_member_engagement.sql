-- database: /path/to/database.db
-- Member engagement analysis
SELECT m.name AS member_name, COUNT(e.rental_id) AS total_rentals
FROM members m
LEFT JOIN rentals e ON m.member_id = e.member_id
GROUP BY m.name
ORDER BY total_rentals DESC;
