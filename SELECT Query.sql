-- using employees database from github
-- employees database link 
-- https://www.dropbox.com/sh/ydl7k4286i99nc3/AACAqYB0wAFB6167ovPctNaSa?dl=0
show databases;
use employees;
show tables;

#                           Question 1
--   Select the information from the “dept_no” column of the “departments” table.
--   Select all data from the “departments” table.

SELECT 
    dept_no
FROM
    departments;

#                           Question 2
-- Select all people from the “employees” table whose first name is “Elvis”. 😊

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';

#                           Question 3
-- Retrieve a list with all female employees whose first name is Kellie. 

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F' AND first_name = 'kellie';
    
#                           Question 4
-- Retrieve a list with all employees whose first name is either Kellie or Aruna.

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';

#                           Question 5
-- Retrieve a list with all female employees whose first name is either Kellie or Aruna.

SELECT 
    *
FROM
    employees
WHERE
    (first_name = 'Kellie'
        OR first_name = 'Aruna') AND gender = 'F';

#                           Question 6
-- Use the IN operator to select all individuals from the “employees” table,
-- whose first name is either “Denis”, or “Elvis”.

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');

#                           Question 7
-- Extract all records from the ‘employees’ table,
-- aside from those with employees named John, Mark, or Jacob.

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');

#                           Question 8
-- Working with the “employees” table,
-- use the LIKE operator to select the data about all individuals,
-- whose first name starts with “Mark”; specify that the name can 
-- be succeeded by any sequence of characters.
-- 1. Retrieve a list with all employees who have been hired in the year 2000.
-- 2. Retrieve a list with all employees whose employee number is written with 5 characters,
--     and starts with “1000”. 


SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE '%Mark%';
    
-- Answer 1

SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE '2000%';
    
-- Answer 2

SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE '1000_';

#                           Question 9
-- Extract all individuals from the ‘employees’ table whose first name contains “Jack”.
-- Once you have done that, extract another list containing the
-- names of employees that do not contain “Jack”.

-- Ansewer 1
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE '%Jack%';
    
-- Answer 2
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE '%Jack%';

#                           Question 10
-- Select all the information from the “salaries”
-- table regarding contracts from 66,000 to 70,000 dollars per year.
-- Retrieve a list with all individuals whose employee number is
-- not between ‘10004’ and ‘10012’.
-- Select the names of all departments with numbers between ‘d003’ and ‘d006’.

SELECT 
    *
FROM
    salaries
WHERE
    emp_no BETWEEN '10004' AND '10012';
    
#                           Question 11
-- Select the names of all departments whose department number value is not null.
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;

#                           Question 12
-- Retrieve a list with data about all female employees
-- who were hired in the year 2000 or after.
-- Hint: If you solve the task correctly, SQL should return 7 rows.
-- Extract a list with all employees’ salaries higher than $150,000 per annum.

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';
        
-- Answer 2
SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;


#                           Question 13
-- Obtain a list with all different “hire dates” from the “employees” table.
-- Expand this list and click on “Limit to 1000 rows”.
-- This way you will set the limit of output rows displayed back to the default of 1000.
-- In the next lecture, we will show you how to manipulate the limit rows count. 

-- Answer 1
SELECT DISTINCT
    (hire_date)
FROM
    employees;
    
-- Answer 2
SELECT DISTINCT
    (hire_date)
FROM
    employees limit 1000;

#                           Question 14
-- How many annual contracts with a value higher than or equal to $100,000
-- have been registered in the salaries table?
-- How many managers do we have in the “employees” database?
-- Use the star symbol (*) in your code to solve this exercise.

-- Answer 1
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
-- Answer 2
SELECT 
    COUNT(*)
FROM
    titles
WHERE
    title = 'Manager';

#                           Question 15
-- Select all data from the “employees” table, ordering it by “hire date” in descending order.

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

#                           Question 16
-- This will be a slightly more sophisticated task.
-- Write a query that obtains two columns. 
-- The first column must contain annual salaries higher than 80,000 dollars. 
-- The second column, renamed to “emps_with_same_salary”, 
-- must show the number of employees contracted to that salary. 
-- Lastly, sort the output by the first column.

SELECT 
    salary, COUNT(emp_no) AS 'emps_with_same_salary'
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary;


#                           Question 16
-- Select all employees whose average salary is higher than $120,000 per annum.
-- Hint: You should obtain 101 records.

SELECT 
    *
FROM
    salaries
GROUP BY emp_no
HAVING avg(salary) > 120000;

#                           Question 17
-- Select the employee numbers of all individuals
-- who have signed more than 1 contract after the 1st of January 2000.
-- Hint: To solve this exercise, use the “dept_emp” table.

SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;

#                           Question 18
-- Select the first 100 rows from the ‘dept_emp’ table. 
SELECT 
    *
FROM
    dept_emp
LIMIT 100;


-- Bilau Dauda 
