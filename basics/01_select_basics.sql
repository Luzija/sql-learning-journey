-- ============================================
-- File: 01_select_basics.sql
-- Topic: Basics - SELECT, FROM, WHERE, ORDER BY
-- Database: practice_sql
-- ============================================

USE practice_sql;
GO

-- ------------------------------------------
-- 1. Select all columns from a table
-- ------------------------------------------
SELECT *
FROM your_table_name;

-- ------------------------------------------
-- 2. Select specific columns
-- ------------------------------------------
SELECT column1, column2
FROM your_table_name;

-- ------------------------------------------
-- 3. Filter rows with WHERE
-- ------------------------------------------
SELECT *
FROM your_table_name
WHERE column1 = 'some_value';

-- ------------------------------------------
-- 4. Multiple conditions (AND / OR)
-- ------------------------------------------
SELECT *
FROM your_table_name
WHERE column1 = 'value1'
  AND column2 > 100;

-- ------------------------------------------
-- 5. Sort results with ORDER BY
-- ------------------------------------------
SELECT column1, column2
FROM your_table_name
ORDER BY column2 DESC;

-- ------------------------------------------
-- 6. Limit rows with TOP (T-SQL syntax)
-- ------------------------------------------
SELECT TOP 10 *
FROM your_table_name
ORDER BY column1;

-- ------------------------------------------
-- 7. Column aliases with AS
-- ------------------------------------------
SELECT
    column1 AS 'First Column',
    column2 AS 'Second Column'
FROM your_table_name;
