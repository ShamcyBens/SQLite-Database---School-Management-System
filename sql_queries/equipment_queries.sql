-- database: ../school.db
-- equipment_queries.sql
CREATE TABLE IF NOT EXISTS equipment (
    equipment_id INTEGER PRIMARY KEY,
    name TEXT,
    available BOOLEAN
);
