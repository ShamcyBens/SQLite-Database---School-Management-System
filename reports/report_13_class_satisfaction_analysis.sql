-- database: ../school.db
-- Class satisfaction analysis
SELECT c.name AS class_name, AVG(s.score) AS avg_satisfaction_score
FROM classes c
LEFT JOIN satisfaction_scores s ON c.class_id = s.class_id
GROUP BY c.name
ORDER BY avg_satisfaction_score DESC;
