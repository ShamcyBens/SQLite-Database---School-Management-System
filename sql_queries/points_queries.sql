-- database: ../school.db
-- Drop and recreate the table with correct schema
DROP TABLE IF EXISTS points;
CREATE TABLE IF NOT EXISTS points (
    points_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    points_earned INTEGER,
    activity_type TEXT
);

-- Inserting sample data into points table
INSERT INTO points (points_id, member_id, points_earned, activity_type)
VALUES
    (1, 1, 100, 'Workout'),  -- Assuming points_id is auto-incremented and not explicitly set
    (2, 2, 50, 'Challenge'), -- Corrected typo in the column name
    (3, 3, 75, 'Healthy Eating'); -- Corrected typo in the column name
