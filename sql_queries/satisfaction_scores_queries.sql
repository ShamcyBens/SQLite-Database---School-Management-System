-- database: ../school.db
-- satisfaction_scores_queries.sql
CREATE TABLE IF NOT EXISTS satisfaction_scores (
    score_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    class_id INTEGER,
    satisfaction_score INTEGER
);
