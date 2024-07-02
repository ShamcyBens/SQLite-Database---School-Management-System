-- database: ../school.db
-- report_6_unavailable_equipment.sql

-- Equipment currently unavailable for rent
SELECT *
FROM equipment
WHERE available = 0;

