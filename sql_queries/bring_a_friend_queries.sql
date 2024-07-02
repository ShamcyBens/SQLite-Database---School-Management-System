-- database: /path/to/database.db
-- Drop and recreate the table with correct schema
DROP TABLE IF EXISTS bring_a_friend;

CREATE TABLE IF NOT EXISTS bring_a_friend (
    friend_id INTEGER PRIMARY KEY,
    introducer_member_id INTEGER,
    new_member_id INTEGER,
    campaign_id INTEGER,
    points_earned INTEGER
);

-- Inserting sample data into bring_a_friend table
INSERT INTO bring_a_friend (introducer_member_id, new_member_id, campaign_id, points_earned)
VALUES
    (1, 2, 1, 50),
    (3, 4, 2, 75);
