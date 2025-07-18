create database assignment1;
use assignment1;

create table company
(
comapnyId int,
companyName varchar(40),
street varchar(45),
city varchar(30),
state varchar(40),
zip varchar(20)
);

create table Contact
(
contactid int primary key,
companyId int ,
firstname varchar(40),
lastname varchar(30),
Street varchar(45),
City varchar(40),
State varchar(30),
Zip varchar(15),
Ismain boolean,
Email varchar(40),
Phone bigint,
foreign key (companyId) references company (companyId)
);

create table Employee
(
EmployeeId int primary key,
Firstname varchar(40),
Lastname varchar(40),
Salary decimal(10,2),
Hiredate date,
Jobtitle varchar(30),
Email varchar(35),
Phone varchar(40)
);

create table ContactEmployee
(
ContactempId int primary key,
contactid int,
EmployeeId int,
Contactdate date,
Descriptionn varchar(90),
foreign key (contactid ) references Contact(contactid ),
foreign key (EmployeeId) references Employee (EmployeeId)
);

/*Q.4) In the Employee table, the statement that changes  Lesley Bland’s phone number
to 215-555-88008*/
#ANS:-
update employee set Phone=9855558800  where Firstname= "Lesley";
#In above query we have to update the phone no whose name is lesley bland's


/*Q.5) In the Company table, the statement that changes the name of “Urban
Outfitters, Inc.” to “Urban Outfitters” . */
#ANS:-
update company set companyName="Urban Outfitters" where companyName="Urban Outfitters,Inc";
# In above query update company name urban outfitters to urban outfitters,inc


/*Q.8) What is the significance of “%” and “_” operators in the LIKE statement? */
#ANS:-  
/*In SQL's LIKE statement, the percent sign (%) and underscore (_) 
are wildcard characters used for pattern matching. The % represents 
zero or more characters, while _ represents a single character, */

#Q.9 Explain normalization in the context of databases. 
#ANS:-
/* Normalization aims to eliminate redundant data, which occurs
 when the same information is stored in multiple places within the 
 database.*/
 
#Q.10 What does a join in MySQL mean?  
#ANS:-
/* A JOIN clause is used to combine rows from two or more tables, 
based on a related column between them. */

#Q.11 What do you understand about DDL, DCL, and DML in MySQL?
#ANS:-
/* Data Definition Language (DDL) statements are used to 
manipulate mysql database schema objects. Mainly use of the
 CREATE, ALTER, and DROP statements to create,
 modify, and maintain MySQL databases, tables, and views.
 
DCL stands for Data Control Language. It includes commands such 
as GRANT and is primarily concerned with rights,
 permissions, and other controls of the database system .
 
 DML stands for Data Manipulation Language. 
 It deals with data manipulation and includes the most
 common SQL statements such as SELECT, INSERT, UPDATE, DELETE, etc. */
 
/*Q.12 What is the role of the MySQL JOIN clause in a query, and what are some
common types of joins?  */
#ANS:-
/* The MySQL JOIN clause combines data from two or more tables 
based on a related column. Common types include INNER JOIN, 
LEFT JOIN, RIGHT JOIN.*/

