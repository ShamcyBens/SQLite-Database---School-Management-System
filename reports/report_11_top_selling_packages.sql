-- database: ../school.db
-- report_11_top_selling_packages.sql

SELECT p.name AS package_name, COUNT(*) AS total_sales
FROM packages p
INNER JOIN memberships m ON p.package_id = m.package_id
GROUP BY p.name
ORDER BY total_sales DESC
LIMIT 3;

-- Analysis by brand affiliation or guest pass usage
-- You would add further analysis based on your specific data structure and requirements
