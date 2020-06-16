-- using employees database from github
-- employees database link 
-- https://www.dropbox.com/sh/ydl7k4286i99nc3/AACAqYB0wAFB6167ovPctNaSa?dl=0
show databases;
use employees;
show tables;


#                           Question 1
-- Change the “Business Analysis” department name to “Data Analysis”.
-- Hint: To solve this exercise, use the “departments” table.

select * from departments;

UPDATE departments 
SET 
    dept_name = 'Data Analayis'
WHERE
    dept_no = 'd010';
    
