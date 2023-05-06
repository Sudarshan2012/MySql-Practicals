/*
1. SELECT ALL THE DIFFERENT NAMES FROM THE COUNTRY
2. SELECT ALL THE COUNTRY NAMES STARTING WITH A AND U 
3. SELECT ALL THE COUNTRY NAMES WHICH ARE NOT STARTING WITH U AND G 
4. UPDATE THE NAME OF THE STUDENT WHOSE ID IS 107
5. UPDATE THE COUNTRY AND NAME OF THE STUDENT WHOSE ID IS 104
6. FIND ALL THE STUDENTS WHOSE AGE IS BETWEEN 25 TO 30
7. LIST ALL THE STUDENTS WHO DOESNT BELONG TO THE AGE 20-25
8. SELECT ALL THE NAME OF THE STUDENT WHO HAS 'R' ANY WHERE IN THE NAME
9. SELECT ALL THE FIELDS WHERE COUNTRY NAME IS 'INDIA' AND 'USA'
10.SELECT ALL THE RECORDS WHERE COUNTRY NAME IS NOT USA AND GERMANY
11.SELECT ALL THE NAMES OF THE STUDENT WHICH ARE ENDING WITH 'A' 
*/

-- creating a databse
create database school2;
use school2;
-- creating table student
create table student(sid int, sname varchar(30), age int,country varchar(20));
-- inserting records in student table
insert into student(sid,sname,age,country) values(101,'RK',26,'Germany');
insert into student(sid,sname,age,country) values(102,'AC',29,'Africa');
insert into student(sid,sname,age,country) values(103,'Umesh',31,'USA');
insert into student(sid,sname,age,country) values(104,'Ram',24,'India');
insert into student(sid,sname,age,country) values(105,'Ritik',25,'UK'); 
insert into student(sid,sname,age,country) values(106,'Sudarshan',21,'India');
insert into student(sid,sname,age,country) values(107,'Anna',27,'Japan');
-- Finding all the different names from country
select country from student;
-- Finding all the country names which are starting from 'A' and 'U'
select country from student where (country like "A%" or country like "U%");
-- Finding all the country names which are not starting from 'U' and 'G'
select country from student where (country not like "U%" and country not like "G%");
-- Update the name of the student whose id is 107
update student set sname='Chakra' where sid=107;
select * from student;
-- Update country and name of the student whose id is 104
update student set country='Russia', sname='Shyam' where sid=104;
select * from student;
-- Finding all the student whose age in between 25 and 30
select * from student where age between 25 and 30;
-- Finding all the students whose age is not between 20 and 25
select * from student where age not between 20 and 25;
-- Finding all the names of students who has 'R' any where in the name
select sname from student where sname like "%R%";
-- Finding all the students whose country is 'India' or 'USA'
select * from student where (country='India' or country='USA');
-- Finding all the students whose country is not 'USA' and 'Germany'
select * from student where (country!='USA' and country!='Germany');
-- Finding name of all the students which are ending with 'A'
select sname from student where sname like "%a";

