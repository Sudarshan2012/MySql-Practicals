/* CREATE TABLE TEACHER-ID, NAME, CITY, SALARY, AGE, COUNTRY
   CREATE TABLE CAR- ID, NAME, COLOR, PRICE, LAUNCH DATE, COUNTRY
   1. SELECT THE MAXIMUM SALARY OF TEACHER.
   2. SELECT THE TEACHERS FROM COUNTRY INDIA AND CITY 'INDORE' 3. SELECT THE MINIMUM SALARY OF TEACHER
   3. SELECT THE MINIMUM SALARY OF TEACHER
   4. SELECT THE AVG SALARY OF ALL THE TEACHERS
   5. UPDATE ANY NAME OF TEACHER TO SUMAN
   6. SELECT THE TEACHER WHOSE COUNTRY IS INDIA AND THE SALARY IS 20K OR 30K
   7. SELECT THE MINIMUM PRICE OF CAR
   8. FIND OUT THE TOTAL OF THE PRICES OF THE CAR
   9. FIND OUT THE AVERAGE OF THE PRICES OF THE CAR
   10. UPDATE THE LAUNCH DATE OF CAR WHOSE ID IS 105 TO TODAYS DATE
   11. LIST ALL THE CARS WHICH ARE LAUNCHED IN 'INDIA' AND HAVE PRICE GREATER THAN 20 LAKH
   12. DISPLAY THE COUNT OF ALL THE  OF CARS IN THE TABLE
   13. FIND OUT THE CHEAPEST CAR PRICE IN THE LIST
   14. FIND OUT THE COSTLEIST CAR PRICE ON THE LIST
   15. FIND THE NAME OF THE CAR WHICH HAVE ATLEAST 'A' ONCE IN THE NAME AND PRICE IS ALSO GREATER THAN 20 LAKH
   16. FIND THE NAME OF ALL THE CARS STARTING WITH 'A' AND 'V'. 
   17. FIND OUT THE ALL THE FACULTIES WHOSE NAME HAS 'H' TWICE IN IT AND HAVE AGE GREATER THAN 25 YEARS
   18. LIST ALL THE FACULTIES BETWEEN AGE 25-35.
*/
-- crete database maxmin
create database maxmin;
use maxmin;
-- creating table teacher
create table teacher(id int, name varchar(30),city varchar(20),salary int, age int, country varchar(20));
-- inserting records in teacher table
insert into teacher(id,name,city,salary,age,country) values(11,'Gunjan','Pune',30000,25,'India');
insert into teacher(id,name,city,salary,age,country) values(12,'Valsang','Indore',32000,26,'India');
insert into teacher(id,name,city,salary,age,country) values(13,'Deshmukh','Solapur',20000,32,'India');
insert into teacher(id,name,city,salary,age,country) values(14,'Kulkarni','Nashik',25000,35,'India');
insert into teacher(id,name,city,salary,age,country) values(15,'Kharade','Mumbai',20000,26,'India');
insert into teacher(id,name,city,salary,age,country) values(16,'Kharade','Ahmedabad',36000,26,'India');
insert into teacher(id,name,city,salary,age,country) values(17,'Kh','Mu',55000,26,'Australia');
select * from teacher;

-- creating table car
create table car(id int, name varchar(30), color varchar(20), price int, launchdate date, country varchar(10));
-- inserting records in car table
insert into car(id,name,color,price,launchdate,country) values(101,'KIA','White',2000000,'2019-06-15','India');
insert into car(id,name,color,price,launchdate,country) values(102,'TATA','Red',1000000,'2021-10-10','India');
insert into car(id,name,color,price,launchdate,country) values(103,'Alto','Red',500000,'2009-10-10','India');
insert into car(id,name,color,price,launchdate,country) values(104,'Verna','Blue',2200000,'2018-10-14','India');
insert into car(id,name,color,price,launchdate,country) values(105,'Punch','green',500000,'2009-10-10','India');
insert into car(id,name,color,price,launchdate,country) values(106,'Kwid','Violet',2500000,'2015-08-13','India');
select * from car;
-- select the maximum salary from teacher table
select max(salary) from teacher;
-- select the teachers who are from 'India' and city 'Indore'
select * from teacher where country='India' and city='Indore';
-- select minimum salary from teacher table
select min(salary) from teacher;
-- select average of  salary from teacher table
select avg(salary) from teacher;
-- update any name of teacher from table
update teacher set name='Suman' where id=13;
select * from teacher;
-- select the teacher where country is 'India' and salary 20k or 30k
select * from teacher where country='India' and (salary=20000 or salary=30000);
-- select the minimum price of car from car table
select min(price) from car;
-- select the sum of all the prices of the car from table
select sum(price) from car;
-- select the avg of all the prices of the car from table
select avg(price) from car;
-- update the launch date of car whose ID is 105 to today's date
UPDATE car SET launchdate = CURDATE() WHERE id = 105; 
select * from car;
-- select all the cars which are launched in 'India' and have price greater than 20 lakh
select * from car where country='India' and price>2000000;
-- display the count of all the cars in the table
select count(*) as count_name from car;
-- select the cheapest car price in the list 
select min(price) as cheapest_car_price from car;
-- select the costleist car price in the list 
select max(price) as costleist_car_price from car;
-- select the cars name of the car which have atleast 'A' once in the name and price is also greater than 20 lakh 
select * from car where name like "%a%" and price>2000000;
-- select the cars name starting with 'A' and 'V'
select * from car where name like "A%" or name like "V%";
-- select the faculties whose has 'H' twice in itand have age greater than 25 years
select * from teacher where name like "%H%H%" and age>25;
-- select all the faculties between age 25-35
select * from teacher where age between 25 and 35;



