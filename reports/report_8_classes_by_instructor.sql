-- database: ../school.db
-- report_8_classes_by_instructor.sql

SELECT i.name AS instructor_name, COUNT(c.class_id) AS total_classes
FROM instructors i
LEFT JOIN classes c ON i.instructor_id = c.instructor_id
GROUP BY i.name;
