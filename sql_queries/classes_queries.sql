-- database: ../school.db
-- classes_queries.sql
CREATE TABLE IF NOT EXISTS classes (
    class_id INTEGER PRIMARY KEY,
    name TEXT,
    instructor_id INTEGER
);


