-- using employees database from github
-- employees database link 
-- https://www.dropbox.com/sh/ydl7k4286i99nc3/AACAqYB0wAFB6167ovPctNaSa?dl=0
show databases;
use employees;
show tables;


#                           Question 1
-- Select ten records from the “titles” table to get a better idea about its content.
-- Then, in the same table, insert information about employee number 999903.
-- State that he/she is a “Senior Engineer”, who has started working in this position on October 1st, 1997.
-- At the end, sort the records from the “titles” table in descending order to check if you have successfully inserted the new record.
-- Hint: To solve this exercise, you’ll need to insert data in only 3 columns!
-- Don’t forget, we assume that, apart from the code related to the exercises, you always execute all code provided in the lecture.
-- This is particularly important for this exercise. If you have not run the code from the previous lecture, called ‘The INSERT Statement – Part II’,
-- where you have to insert information about employee 999903, you might have trouble solving this exercise!

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

-- Inserting into the employees table

insert into employees
Values (999903,"1997-01-01","Dauda", "Bilau", "M", "1997-10-01")
;


SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;

-- Inserting into the title table
INSERT INTO	titles (emp_no, title, from_date)
VALUES (999903, "Senior Engineer", "1997-10-01");


#                           Question 2
-- Insert information about the individual with employee number 999903 into the “dept_emp” table.
-- He/She is working for department number 5, and has started work on  October 1st, 1997;
-- her/his contract is for an indefinite period of time.
-- Hint: Use the date ‘9999-01-01’ to designate the contract is for an indefinite period.

SELECT 
    *
FROM
    dept_emp order by emp_no desc;
    
-- Inserting into the dept_emp table
    
INSERT INTO dept_emp
VALUES(999903, "d005","1997-10-01","9999-01-01");


#                           Question 3
-- Create a new department called “Business Analysis”. Register it under number ‘d010’.
-- Hint: To solve this exercise, use the “departments” table.

SELECT 
    *
FROM
    departments;
    
-- Inserting into the Departments tables
INSERT INTO departments
VALUES ("d010","Business Analysis");













