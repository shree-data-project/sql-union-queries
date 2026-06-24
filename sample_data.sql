-- ============================================================
-- File     : sample_data.sql
-- Purpose  : Inserts sample records into both tables so
--            you can run and test the UNION queries.
-- Run this AFTER schema.sql.
-- ============================================================

USE employee_db;

-- -------------------------------------------------------
-- Insert into employee_demographics
-- -------------------------------------------------------
INSERT INTO employee_demographics (first_name, last_name, age, gender, birth_date) VALUES
('Leslie',   'Knope',       44,  'Female', '1982-01-18'),
('Ron',      'Swanson',     55,  'Male',   '1971-05-05'),
('Ann',      'Perkins',     38,  'Female', '1988-07-10'),
('Ben',      'Wyatt',       40,  'Male',   '1986-02-28'),
('Tom',      'Haverford',   36,  'Male',   '1990-03-14'),
('April',    'Ludgate',     29,  'Female', '1997-06-01'),
('Andy',     'Dwyer',       34,  'Male',   '1992-08-22'),
('Chris',    'Traeger',     50,  'Male',   '1976-11-11'),
('Donna',    'Meagle',      47,  'Female', '1979-04-19'),
('Jerry',    'Gergich',     60,  'Male',   '1966-09-30');

-- -------------------------------------------------------
-- Insert into employee_salary
-- NOTE: Some employees overlap with demographics to
--       demonstrate UNION DISTINCT vs UNION ALL behaviour.
-- -------------------------------------------------------
INSERT INTO employee_salary (first_name, last_name, occupation, salary, dept_id) VALUES
('Leslie',   'Knope',       'Deputy Director',     75000.00,  1),
('Ron',      'Swanson',     'Director',            90000.00,  1),
('Ann',      'Perkins',     'Nurse',               68000.00,  2),
('Ben',      'Wyatt',       'City Manager',        85000.00,  1),
('Tom',      'Haverford',   'Entrepreneur',        55000.00,  3),
('April',    'Ludgate',     'Assistant',           48000.00,  1),
('Andy',     'Dwyer',       'Shoeshine Boy',       30000.00,  4),
('Chris',    'Traeger',     'State Auditor',       95000.00,  1),
('Donna',    'Meagle',      'Office Manager',      62000.00,  1),
('Jerry',    'Gergich',     'Administrative Asst', 42000.00,  1),
-- Extra rows only in salary (demonstrate UNION adding more rows)
('Mark',     'Brendanawicz','City Planner',        72000.00,  5),
('Craig',    'Middlebrooks','Office Manager',      60000.00,  1);
