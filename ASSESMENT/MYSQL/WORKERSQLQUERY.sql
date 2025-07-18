CREATE DATABASE WORK1; -- first we have to create a database for creating table and excute query.

USE WORK1; -- without choose database we cant create table bcoz system doesn't know which databse u have to use.

select * from worker; -- this query is only for read whole table data .

CREATE TABLE WORKER -- its a syntax for creating a table create table then table_name
(
 WORKER_ID INT PRIMARY KEY, -- it is mandatory to write data type after assign a column name
 FIRST_NAME VARCHAR(30), -- varchar is used for both int,character value but it is written in double quotes and it is mandatory to give length in varchar.
 LAST_NAME VARCHAR(20),
 SALARY bigint, -- bigint is used for store large whole numbers
 JOINING_DATE DATE, -- if we assign a date then in mysql there is a fix format year-month-day
 DEPARTMENT TEXT -- text datatype is also as same as varchar but here there is no need to give size
 );
 
 /*Q.1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
Ascending and DEPARTMENT Descending. */
 #Ans:-
select * from WORKER ORDER BY FIRST_NAME ASC, DEPARTMENT DESC  ;
 /* above query is for select all the row and column from table but only
 firstname and department should be in sorted order*/
 
 /*Q.2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
from the Worker table. */
#ANS:-
 SELECT * FROM WORKER WHERE FIRST_NAME IN("VIPUL","SATISH");
 /* above query is for if we want multiple rows */
 
/*Q.3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
contains six alphabets. */
 #ANS:-
 SELECT * FROM WORKER WHERE FIRST_NAME LIKE "%h" AND LENGTH(FIRST_NAME) = 6;
 /* The LIKE operator is used in a WHERE clause to 
 search for a specified pattern in a column.*/


/*Q.4 . Write an SQL query to print details of the Workers whose SALARY lies between 1. */
 #ANS:-
 SELECT * FROM WORKER WHERE SALARY BETWEEN 1 AND 100000;
 /* here we use between operator  for selects value within a given range
 starting and ending value are included*/
 
 
 /*Q.5 Write an SQL query to fetch duplicate records having matching data in some fields of a table. */
#ANS:-
 select salary ,count(WORKER_ID) matching_records from worker group by salary 
 having count(WORKER_ID)>1 ;
 /* above query is for find out duplicate record having matching 
 data in some fields of a table.*/
 
 
 /*Q.6 Write an SQL query to show the top 6 records of a table. */
 #ANS:-
 SELECT * FROM WORKER  LIMIT 6;
 /* limit function is used for specify 
 the number of records to return*/
 
 
 /*Q.7 Write an SQL query to fetch the departments that have less than five people in them.*/
#ANS:-
SELECT DEPARTMENT, COUNT(worker_ID) as 'Number of Employee'
FROM worker GROUP BY (department) HAVING COUNT(worker_ID) < 5;
/* above query is for fetch department that have less then five
people in them so there we use aggregate count function with group by clause*/
 
 
/* Q.8 Write an SQL query to show all departments along with the number of people in there*/
#ANS:- 
select DEPARTMENT,count(WORKER_ID)  as numberofpeople from worker  group by DEPARTMENT;
/* above query is for fetch department with no of people 
in there particular department here as keyword is used 
to give temporary name to column*/
 
 
/* Q.9 Write an SQL query to print the name of employees having the highest salary in each
department. */
#ANS:- 
SELECT e.FIRST_NAME, e.salary, e.department
FROM worker e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM worker
    WHERE department = e.department
 );   
/* above query is for print name of workers that having highest salary in
 each department here we giving it an as alias e for easy refernce 
 where e.salary refers to filters the rows to 
 only those where the worker’s salary is equal to the result of the subquery.*/    




