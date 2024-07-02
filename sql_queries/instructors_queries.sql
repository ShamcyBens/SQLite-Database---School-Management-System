-- database: ../school.db
-- instructors_queries.sql
DROP TABLE IF EXISTS instructors;

CREATE TABLE IF NOT EXISTS instructors (
    instructor_id INTEGER PRIMARY KEY,
    name TEXT
);


-- instructors_queries.sql
INSERT INTO instructors (instructor_id, name) VALUES
    (1, 'Instructor A'),
    (2, 'Instructor B'),
    (3, 'Instructor C');
