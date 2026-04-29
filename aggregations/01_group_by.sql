-- ============================================
-- File: 01_group_by.sql
-- Topic: Aggregations - COUNT, SUM, AVG, GROUP BY, HAVING
-- Database: practice_sql
-- ============================================

USE practice_sql;
GO

-- ------------------------------------------
-- 1. COUNT rows
-- ------------------------------------------
SELECT COUNT(*) AS TotalRows
FROM your_table_name;

-- ------------------------------------------
-- 2. SUM and AVG on numeric columns
-- ------------------------------------------
SELECT
    SUM(numeric_column) AS Total,
    AVG(numeric_column) AS Average,
    MIN(numeric_column) AS Minimum,
    MAX(numeric_column) AS Maximum
FROM your_table_name;

-- ------------------------------------------
-- 3. GROUP BY - aggregate per category
-- ------------------------------------------
SELECT
    category_column,
    COUNT(*) AS Count,
    SUM(numeric_column) AS Total
FROM your_table_name
GROUP BY category_column
ORDER BY Total DESC;

-- ------------------------------------------
-- 4. HAVING - filter on aggregated results
-- (Like WHERE but for GROUP BY results)
-- ------------------------------------------
SELECT
    category_column,
    COUNT(*) AS Count
FROM your_table_name
GROUP BY category_column
HAVING COUNT(*) > 5
ORDER BY Count DESC;
