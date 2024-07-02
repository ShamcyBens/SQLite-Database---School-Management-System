-- database: ../school.db
-- class_instructors_queries.sql
CREATE TABLE IF NOT EXISTS class_instructors (
    class_instructor_id INTEGER PRIMARY KEY,
    class_id INTEGER,
    instructor_id INTEGER
);

-- Inserting sample data into class_instructors table
INSERT INTO class_instructors (class_id, instructor_id)
VALUES
    (1, 101),
    (2, 102),
    (3, 103);
