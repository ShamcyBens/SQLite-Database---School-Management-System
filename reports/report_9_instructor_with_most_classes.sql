-- report_9_instructor_with_most_classes.sql

SELECT i.name AS instructor_name, COUNT(ci.class_id) AS class_count
FROM instructors i
INNER JOIN class_instructors ci ON i.instructor_id = ci.instructor_id
GROUP BY i.name
ORDER BY class_count DESC
LIMIT 1;
