-- using employees database from github
-- employees database link 
-- https://www.dropbox.com/sh/ydl7k4286i99nc3/AACAqYB0wAFB6167ovPctNaSa?dl=0
show databases;
use employees;
show tables;


#                           Question 1
-- Remove the department number 10 record from the “departments” table.
SELECT 
    *
FROM
    departments;
    
commit;

DELETE FROM departments 
WHERE
    dept_no = 'd010';
    
rollback;