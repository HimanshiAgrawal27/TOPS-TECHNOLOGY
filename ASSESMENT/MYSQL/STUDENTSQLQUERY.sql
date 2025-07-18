create database school1;
use school1;

create table student
(
stdId int primary key,
stdName TEXT,
Sex enum("Female","Male"), #ENUM IS USED HERE AS S string data type that allows you to restrict a column's values to a predefined set of options. 
Percentage INT,
Class int,
Sec text,
Stream varchar(20),
DOB date
);

#Q.1 To display all the records form STUDENT table. SELECT * FROM student ; 
select * from student;
#ABOVE QUERY RETURNS ALL THE ROWS AND COLUMNS WITH DATA


/*Q.2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB
FROM student ; */
select stdName,DOB from student;
#ABOVE QUERY RETURNS SPECIFIC STUDENTNAME AND DOB FROM STUDENT TABLE


/*Q.3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM student WHERE percentage >= 80; */
select * from student where Percentage >=80;
/*ABOVE QUERY RETURNS ONLY THOSE STUDENTS DATA WHOSE 
PERCENTAGE IS GREATER THAN OR EQUAL TO 80*/


/*Q.4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName, Stream, Percentage WHERE percentage > 80; */
select stdName,Stream,Percentage  from student where Percentage >80;
/* ABOVE QUERY RETURNS ONLY THOSE STUDENT DATA WHICH GETS ABOVE 80% 
WITH SPECIFIC COLUMN NAME THAT IS DEFINE*/


/*5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75;*/
select * from student where Stream="Science" and Percentage>75;
/* ABOVE QUERY RETURNS ALL THE RECORD FROM STUDENT TABLE WHOSE 
STREAM IS SCIENCE AND ALSO THEIR % IS ABOVE 75 */


