-- ============================================================
-- File     : schema.sql
-- Purpose  : Creates the database and tables required for
--            the UNION query demonstrations.
-- Run this FIRST before inserting data or running queries.
-- ============================================================

-- Create and select the database
CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

-- -------------------------------------------------------
-- Table: employee_demographics
-- Stores personal/demographic information of employees.
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS employee_demographics (
    employee_id   INT            NOT NULL AUTO_INCREMENT,
    first_name    VARCHAR(50)    NOT NULL,
    last_name     VARCHAR(50)    NOT NULL,
    age           INT,
    gender        VARCHAR(10),
    birth_date    DATE,
    PRIMARY KEY (employee_id)
);

-- -------------------------------------------------------
-- Table: employee_salary
-- Stores job and compensation details of employees.
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS employee_salary (
    employee_id   INT            NOT NULL AUTO_INCREMENT,
    first_name    VARCHAR(50)    NOT NULL,
    last_name     VARCHAR(50)    NOT NULL,
    occupation    VARCHAR(100),
    salary        DECIMAL(10, 2),
    dept_id       INT,
    PRIMARY KEY (employee_id)
);
