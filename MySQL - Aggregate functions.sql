-- using employees database from github
-- employees database link 
-- https://www.dropbox.com/sh/ydl7k4286i99nc3/AACAqYB0wAFB6167ovPctNaSa?dl=0
show databases;
use employees;
show tables;


#                           Question 1
-- How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question.
SELECT 
    COUNT(DISTINCT dept_name) AS No_of_dept
FROM
    departments;

#                           Question 2
-- What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?

SELECT 
    SUM(salary) 'Total Salary'
FROM
    salaries
WHERE
    from_date > '1997-01-01';

#                           Question 3
-- 1. Which is the lowest employee number in the database?
-- 2. Which is the highest employee number in the database?

-- 1
SELECT 
    MIN(emp_no)
FROM
    employees;

-- 2
SELECT 
    MAX(emp_no)
FROM
    employees;

#                           Question 4
-- What is the average annual salary paid to employees who started after the 1st of January 1997?
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
#                           Question 5
-- Round the average amount of money spent on salaries for all contracts that started after the 1st of January 1997 
-- to a precision of cents.
SELECT 
    ROUND(AVG(salary), 1)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
#                           Question 6
-- Select the department number and name from the ‘departments’ table and add a third column 
-- where you name the department number (‘dept_no’) as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.

SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC;

SELECT 
    dept_no, IFNULL(dept_name, 'No Department') AS Dept_name
FROM
    departments;

alter table departments
change column dept_name  dept_name varchar(40) null;

insert into departments (dept_no) values("d011"),("d012");











#                           Question 7









