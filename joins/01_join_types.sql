-- ============================================
-- File: 01_join_types.sql
-- Topic: JOINs - INNER, LEFT, RIGHT, FULL OUTER
-- Database: practice_sql
-- ============================================

USE practice_sql;
GO

-- ------------------------------------------
-- 1. INNER JOIN - only matching rows from both tables
-- ------------------------------------------
SELECT a.column1, b.column2
FROM table_a AS a
INNER JOIN table_b AS b
    ON a.id = b.a_id;

-- ------------------------------------------
-- 2. LEFT JOIN - all rows from left, matched rows from right
-- ------------------------------------------
SELECT a.column1, b.column2
FROM table_a AS a
LEFT JOIN table_b AS b
    ON a.id = b.a_id;
-- Rows in table_a with no match in table_b will show NULL for b.column2

-- ------------------------------------------
-- 3. RIGHT JOIN - all rows from right, matched rows from left
-- ------------------------------------------
SELECT a.column1, b.column2
FROM table_a AS a
RIGHT JOIN table_b AS b
    ON a.id = b.a_id;

-- ------------------------------------------
-- 4. FULL OUTER JOIN - all rows from both tables
-- ------------------------------------------
SELECT a.column1, b.column2
FROM table_a AS a
FULL OUTER JOIN table_b AS b
    ON a.id = b.a_id;
-- NULLs appear where there is no match on either side
