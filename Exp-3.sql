/*
1. CREATE TABLE TEACHER TID,TNAME,TSALARY,TCITY,TCOUNTRY
2. FIND ALL THE TEACHERS FROM CITY DELHI
3. FIND ALL THE TEACHERS WHO ARE FROM 'AHMEDABAD' AND HAVE SALARY GREATER THAN 35000
4. FIND ALL THE TEACHERS WHO BELONG TO COUNTRY 'AUSTRALIA' OR SALARY GREATER THAN 55000
5. FIND THE LIST OF DIFFERENT COUNTRIES
6. FIND THE NAME OF THE TEACHERS WHO DOESNT BELONG TO 'INDIA'
7. DELETE THE RECORD OF THE TEACHER WHOSE SALARY IS 28000
8. DELETE THE RECORD OF THE TEACHER WHOSE NAME IS 'NILAM'
9. CREATE A DUMMY DATABASE 'DUMMY1'
10.CREATE A TABLE TEACHER IN IT
11.ADD 5 RECORDS IN THE TABLE
12.DELETE ALL THE RECORD OF THE TABLE
13.DELETE THE STRUCTURE OF THE TABLE
14.DELETE DUMMY1 DATABASE
15.UPDATE A RECORD WITH TID 104 AND CHANGE ITS COUNTRY TO 'INDIA'
16.UPDATE A RECORD WITH TID 107 AND CHANGE ITS NAME TO REEMA AND THE COUNTRY NAME TO RUSSIA
*/

-- creating a database
create database college;
use college;
-- creating a table teacher
create table teacher(tid int, tname varchar(30), tsalary int, tcity varchar(30), tcountry varchar(30));
-- inserting records in teacher table
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(101,'Gunjan',30000,'Pune','India');
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(102,'Kulkarni',28000,'Solapur','India');
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(103,'Gavade',30000,'Delhi','India');
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(104,'Kharade',36000,'Ahmedabad','Bharat');
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(105,'Deshpande',56000,'UD','Australia');
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(106,'Deshmukh',40000,'Tokyo','Japan');
insert into teacher(tid,tname,tsalary,tcity,tcountry) values(107,'Nilam',35000,'PK','Pares');
-- Finding all the teachers who are from 'Delhi'
select * from teacher where tcity='Delhi';
-- Finding all the teachers who are from 'Ahmedabad' and have salary greater than 35000
select * from teacher where tcity='Ahmedabad' and tsalary>35000;
-- Finding all the teachers who are from 'Australia' or have salary greater than 35000
select * from teacher where tcountry='Australia' or tsalary>55000;
-- Finding list of different countries
select tcountry from teacher;
-- Finding the name of the teacher who doesnt belong to 'India'
select tname from  teacher where tcountry!='India';
-- Deleting the record of teacher whose salary is 28000
delete from teacher where tsalary=28000;
select * from teacher;
-- Deleting the record of teacher whose name is 'Nilam'
delete from teacher where tname='Nilam';
select * from teacher;
-- creating a dummy database 'Dummy1'
create database Dummy1;
use dummy1;
-- creating table teacher in 'Dummy1' database
create table teacher(tid int, tname varchar(30));
-- inserting 5 records in it
insert into teacher(tid,tname) values(11,'Valsang');
insert into teacher(tid,tname) values(12,'Vanve');
insert into teacher(tid,tname) values(13,'Kore');
insert into teacher(tid,tname) values(14,'Salve');
insert into teacher(tid,tname) values(15,'Kudale');
select * from teacher;
-- deleting all the records in teacher table
delete from teacher;
select * from teacher;
-- delete the structure of teacher table
drop table teacher;
-- deleting dummy database 'Dummy1'
drop database Dummy1;
-- update a record of teacher of tid 104 and change its country to 'India'
use college;
update teacher set tcountry='India' where tid='104';
select * from teacher;
-- update a record of teacher of tid 107 and change its name to 'Reema' and country name to 'Russia'
update teacher set tname='Reema' , tcountry='Russia' where tid=107;
select * from teacher;



