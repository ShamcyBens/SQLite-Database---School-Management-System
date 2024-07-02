-- Members with the most class attendance in the past month
SELECT m.name AS member_name, COUNT(a.attendance_id) AS attendance_count
FROM members m
INNER JOIN attendance a ON m.member_id = a.member_id
WHERE a.attendance_date >= DATE('now', '-1 month')
GROUP BY m.name
ORDER BY attendance_count DESC
LIMIT 1;
