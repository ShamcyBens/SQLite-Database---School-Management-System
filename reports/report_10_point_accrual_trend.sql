-- database: ../school.db
-- report_10_point_accrual_trend.sql

-- Trend for member point accrual by activity type
SELECT activity_type, SUM(points_earned) AS total_points
FROM points
GROUP BY activity_type;

-- Members with the highest point balances
SELECT m.name AS member_name, SUM(p.points_earned) AS total_points
FROM members m
INNER JOIN points p ON m.member_id = p.member_id
GROUP BY m.name
ORDER BY total_points DESC
LIMIT 3;
