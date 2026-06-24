-- ============================================================
-- Project  : SQL UNION Queries - Employee Data Analysis
-- Author   : [Your Name]
-- Date     : 2026-06-24
-- Database : MySQL / MariaDB
-- Description: Demonstrates the use of UNION DISTINCT and
--              UNION ALL on employee_demographics and
--              employee_salary tables.
-- ============================================================


-- -------------------------------------------------------
-- QUERY 1: UNION DISTINCT
-- Combines results from both tables and removes duplicates.
-- Only unique first_name + last_name pairs are returned.
-- -------------------------------------------------------

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary;


-- -------------------------------------------------------
-- QUERY 2: UNION ALL
-- Combines results from both tables and keeps ALL rows,
-- including duplicate first_name + last_name pairs.
-- -------------------------------------------------------

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;
