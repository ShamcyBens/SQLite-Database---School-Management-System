-- database: ../school.db
-- rentals_queries.sql
DROP TABLE IF EXISTS rentals;

CREATE TABLE IF NOT EXISTS rentals (
    rental_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    equipment_id INTEGER,
    rental_date DATE,
    return_date DATE
);

-- rentals_queries.sql
INSERT INTO rentals (rental_id, member_id, equipment_id, rental_date, return_date) VALUES
    (1, 1, 1, '2024-06-25', '2024-06-26'),
    (2, 2, 2, '2024-06-26', '2024-06-27'),
    (3, 3, 3, '2024-06-27', '2024-06-28');
