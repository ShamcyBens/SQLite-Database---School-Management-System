-- database: ../school.db
-- equipment_availability_queries.sql
DROP TABLE IF EXISTS equipment_availability;

CREATE TABLE IF NOT EXISTS equipment_availability (
    availability_id INTEGER PRIMARY KEY,
    equipment_id INTEGER,
    available_date DATE,
    unavailable_date DATE
);

INSERT INTO equipment_availability (equipment_id, available_date, unavailable_date) VALUES
    (6, '2024-06-27', '2024-06-27'),
    (7, '2024-06-27', '2024-06-27'),
    (8, '2024-06-27', '2024-06-27');
