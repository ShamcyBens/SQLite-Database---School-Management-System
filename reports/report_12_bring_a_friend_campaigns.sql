-- database: ../school.db
-- report_12_bring_a_friend_campaigns.sql

SELECT m.name AS member_name, COUNT(b.friend_id) AS friends_introduced
FROM members m
INNER JOIN bring_a_friend b ON m.member_id = b.introducer_member_id
GROUP BY m.name
ORDER BY friends_introduced DESC;
