-- 1. CREATE DATABASE SCHOOL
-- 2. CREATE TABLE STUDENT- STID,STNAME,DATEOFBIRTH,CLASS,ADDRESS,COUNTRY,CONTACTNUMBER
-- 3. ADD 10 RECORDS TO STUDENT TABLE
-- 4. CREATE TABLE TEACHER- TID,TNAME,SUBJECT,CONTACTNUMBER,ADRESS,COUNTRY,AGE
-- 5. ADD 10 RECORDS TO TEACHER TABLE
-- 6. CREATE TABLE TEACHER1
-- 7. DELETE THE TABLE TEACHER1 CREATED BY MISTAKE
-- 8. FIND OUT THE STUDENTS WHO ARE FROM AUSTRALIA
-- 9. FIND OUT THE TEACHER WHO TEACH ENGLISH AS A SUBJECT
-- 10.FIND OUT THE STUDENTS WHO STUDY IN CLASS 7
-- 11.FIND OUT THE TEACHER WHO ARE HAVING AGE GREATER THAN 31.

-- creating database school
create database school1;
use school1;
-- creating table student
create table student(stid int,stname varchar(30),dob date,class varchar(30),addr varchar(50),country varchar(30),contactno varchar(30));
select * from student;
-- inserting 10 records into student table
insert into student(stid,stname,dob,class,addr,country,contactno) values(101,'Sudarshan','2000-12-20',10,'Solapur','India','9146984932');
insert into student(stid,stname,dob,class,addr,country,contactno) values(102,'RK','2001-01-01',7,'Sydney','Australia','7263083040');
insert into student(stid,stname,dob,class,addr,country,contactno) values(103,'AC','2001-02-10',8,'Perth','Australia','7499240525');
insert into student(stid,stname,dob,class,addr,country,contactno) values(104,'LK','2004-12-21',7,'Tokyo','Japan','7558292859');
insert into student(stid,stname,dob,class,addr,country,contactno) values(105,'Vijay','2002-06-15',9,'Beijing','China','9552082046');
insert into student(stid,stname,dob,class,addr,country,contactno) values(106,'RL','2003-05-30',4,'Darwin ','Australia','8605241446');
insert into student(stid,stname,dob,class,addr,country,contactno) values(107,'Laxmikant','2002-03-23',9,'Pune','India','9021423102');
insert into student(stid,stname,dob,class,addr,country,contactno) values(108,'Pujari','2001-10-28',6,'Nashik','India','9552084811');
insert into student(stid,stname,dob,class,addr,country,contactno) values(109,'Ritik','2004-12-05',7,'New York','US','9022124567');
insert into student(stid,stname,dob,class,addr,country,contactno) values(110,'Sachin','2001-02-28',9,'Chicago','US','7558292859');
select * from student;

-- creating table teacher 
create table teacher(tid int,tname varchar(30),subject varchar(20),contactno varchar(15),addr varchar(50),country varchar(20),age int);
select * from teacher;
-- inserting 10 records into teacher table
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(11,'Gunjan','Java','8743245769','Pune','India',32);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(12,'Valsang','DBMS','9987456723','Phoenix','US',25);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(13,'Deshmukh','English','8659345609','Solapur','India',31);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(14,'Kulkarni','C++','9456789245','Tokyo','Japan',38);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(15,'Ashish','English','9234786523','New York','US',24);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(16,'Amar','SS','9552082056','Hyderabad','India',28);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(17,'Kore','CSS','9165789034','Sydney','Austraslia',29);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(18,'Waghmode','Math','9234768900','Nashik','India',32);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(19,'Kaveri','English','9922335566','Solapur','India',27);
insert into teacher(tid,tname,subject,contactno,addr,country,age) values(20,'RK','History','8456753453','Pune','India',30);
select * from teacher;

-- creating table teacher1
create table teacher1(sid int);
select * from teacher1;
-- delete table teacher1 created by mistake
 drop table teacher1;
-- Finding the students who are from Australia
select * from student where country='Australia';
-- Finding the teacher who teach English as a subject
select * from teacher where subject='English';
-- Finding the students who study in class 7
select * from student where class=7;
-- Finding the teacher who are having age greater than 31
select * from teacher where age>31;
















