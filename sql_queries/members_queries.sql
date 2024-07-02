-- database: ../school.db
-- members_queries.sql
DROP TABLE IF EXISTS members;

CREATE TABLE IF NOT EXISTS members (
    member_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    membership_type_id INTEGER
);
-- members_queries.sql
INSERT INTO members (member_id, name, age, membership_type_id) VALUES
    (1, 'Alice', 25, 1),
    (2, 'Bob', 30, 2),
    (3, 'Charlie', 28, 1);
