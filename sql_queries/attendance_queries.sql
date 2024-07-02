-- database: ../school.db
-- attendance_queries.sql
DROP TABLE IF EXISTS attendance;

CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    class_id INTEGER,
    attendance_date DATE
);

INSERT INTO attendance (attendance_id, member_id, class_id, attendance_date) VALUES
    (1, 1, 1, '2024-06-27'),
    (2, 2, 2, '2024-06-27'),
    (3, 3, 3, '2024-06-27');
