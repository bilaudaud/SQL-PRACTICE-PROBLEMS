-- using employees database from github
-- employees database link 
-- https://www.dropbox.com/sh/ydl7k4286i99nc3/AACAqYB0wAFB6167ovPctNaSa?dl=0
show databases;
use employees;
show tables;


#                           Question 1
-- Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 
select * from employees;
select * from dept_manager;

SELECT 
    e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e
        INNER JOIN
    dept_manager d ON e.emp_no = d.emp_no
ORDER BY e.emp_no;


#                           Question 2
-- Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch.
-- See if the output contains a manager with that name.  
-- Hint: Create an output containing information corresponding to the following fields:
-- ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. Order by 'dept_no' descending, and then by 'emp_no'.

select * from employees;
select * from dept_manager;

SELECT 
    e.first_name, e.last_name, d.dept_no, d.from_date
FROM
    employees e
        JOIN
    dept_manager d ON d.emp_no = e.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY d.dept_no DESC , e.emp_no;


#                           Question 3
-- Select the first and last name, the hire date, and the job title of all employees whose first name is “Margareta” and
-- have the last name “Markovitch”. 

select * from employees;
select * from titles;

SELECT 
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    first_name = 'Margareta'
        AND last_name = 'Markovitch'
ORDER BY e.emp_no;


#                           Question 4
-- Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
SELECT 
    dm.*, d.dept_name
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009';

#                           Question 5
-- Return a list with the first 10 employees with all the departments they can be assigned to.
-- Hint: Don’t use LIMIT; use a WHERE clause.

SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    titles;
SELECT 
    e.*, t.title
FROM
    employees e
        CROSS JOIN
    titles t
WHERE
    t.emp_no <= '10010'
GROUP BY e.emp_no;

#                           Question 6
-- How many male and how many female managers do we have in the ‘employees’ database?
select * from employees;
SELECT 
    gender, COUNT(gender) 'time appeared'
FROM
    employees
GROUP BY gender;

#                           Question 7
-- Click 'Continue' and execute the query.
-- What do you think is the meaning of the minus sign before subset A in the last row (ORDER BY -a.emp_no DESC)?

SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY - a.emp_no DESC;





-- Dauda Bilau --





