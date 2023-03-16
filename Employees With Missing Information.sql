-- 1965. Employees With Missing Information
-- SQL Schema
-- Table: Employees
-- 
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | employee_id | int     |
-- | name        | varchar |
-- +-------------+---------+
-- employee_id is the primary key for this table.
-- Each row of this table indicates the name of the employee whose ID is employee_id.
--  
-- 
-- Table: Salaries
-- 
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | employee_id | int     |
-- | salary      | int     |
-- +-------------+---------+
-- employee_id is the primary key for this table.
-- Each row of this table indicates the salary of the employee whose ID is employee_id.
--  
-- 
-- Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:
-- 
-- The employee's name is missing, or
-- The employee's salary is missing.
-- Return the result table ordered by employee_id in ascending order.
-- 
-- The query result format is in the following example.
-- 
--  
-- 
-- Example 1:
-- 
-- Input: 
-- Employees table:
-- +-------------+----------+
-- | employee_id | name     |
-- +-------------+----------+
-- | 2           | Crew     |
-- | 4           | Haven    |
-- | 5           | Kristian |
-- +-------------+----------+
-- Salaries table:
-- +-------------+--------+
-- | employee_id | salary |
-- +-------------+--------+
-- | 5           | 76071  |
-- | 1           | 22517  |
-- | 4           | 63539  |
-- +-------------+--------+
-- Output: 
-- +-------------+
-- | employee_id |
-- +-------------+
-- | 1           |
-- | 2           |
-- +-------------+
-- Explanation: 
-- Employees 1, 2, 4, and 5 are working at this company.
-- The name of employee 1 is missing.
-- The salary of employee 2 is missing.

/* Write your PL/SQL query statement below */

SELECT
NVL(EMP.EMPLOYEE_ID,SAL.EMPLOYEE_ID) AS EMPLOYEE_ID
FROM EMPLOYEES EMP
FULL OUTER JOIN
SALARIES SAL
ON EMP.EMPLOYEE_ID=SAL.EMPLOYEE_ID
WHERE EMP.EMPLOYEE_ID IS NULL OR SAL.EMPLOYEE_ID IS NULL
ORDER BY EMPLOYEE_ID
