/*
1. CREATE A TABLE PRODUCT- PRODUCT ID, PRODUCT NAME, PRODUCT PRICE
2. CREATE A TABLE SALES- SALES ID, CUSTOMER ID, PRODUCT ID, QUANTITY
3. CREATE A TABLE CUSTOMER- CUSTOMER ID, CUSTOMER NAME, COUNTRY, AGE, AADHARCARD NUMBER
4. SHOW THE PRODUCT WITH MAXIMUN PRICE 
5. SHOW THE SALES WITH MIN QUANTITY
6. SHOW ALL THE PRODUCTS WHOSE NAME STARTS WITH 'A'
7. SHOW ALL THE CUSTOMERS WHO ARE FROM 'AUSTRALIA'
8. SHOW ALL THE CUSTOMERS WHO ARE FROM 'JAPAN' AND HAVE AGE GREATER THAN 30
9. SHOW ALL THE PRODUCTS WITH PRICE RANGE 200 TO 500 RUPEES
10.SHOW ALL THE SALES PRODUCT WHERE YOU WILL LIST THE PRICE AND ALSO THE TOTAL AMOUNT PAID PER SALES
11.SHOW ALL THE PRODUCT WHICH ARE HAVING PRICE LESS THAN 200 OR HAVE THE NAME STARTING WITH S 
12.CHANGE THE NAME OF CUSTOMER 402 TO 'SHAKTI'
13.LIST DOWN ALL THE SALES ID, PRODUCT ID, PRODUCT NAME, QUANTITY
14.SEARCH FOR ALL THE CUSTOMERS FROM 'UK', 'JAPAN', AND 'SRI LANKA'
*/

-- crerating a databse market
create database market;
use market;
-- creating table product
create table product(pid int, product_name varchar(30), product_price int);
-- inserting recors in product table
insert into product(pid,product_name,product_price) values(1001,'MotherBoard',1000);
insert into product(pid,product_name,product_price) values(1002,'Speaker',150);
insert into product(pid,product_name,product_price) values(1003,'Monitor',300);
insert into product(pid,product_name,product_price) values(1004,'Amplifier',450);
select * from product;

-- creating table sales
create table sales(sid int, customer_id int, pid int  , quantity int);
-- inserting records in sales table
insert into sales(sid, customer_id, pid, quantity) values(1,101,1001,5);
insert into sales(sid, customer_id, pid, quantity) values(2,102,1002,12);
insert into sales(sid, customer_id, pid, quantity) values(3,103,1003,6);
insert into sales(sid, customer_id, pid, quantity) values(4,104,1004,10);
select * from sales;

-- creating table customers
create table customer(cid int, customer_name varchar(30), country varchar(30), age int, aadharcardnumber varchar(20));
-- inserting records in customer table
insert into customer(cid,customer_name,country,age,aadharcardnumber) values(401,'Sudarshan','Australia',22,123456789123);
insert into customer(cid,customer_name,country,age,aadharcardnumber) values(402,'AC','Uk',32,236578124598);
insert into customer(cid,customer_name,country,age,aadharcardnumber) values(403,'RK','Japan',33,568926831693);
insert into customer(cid,customer_name,country,age,aadharcardnumber) values(404,'Anna','India',26,634984724377);
insert into customer(cid,customer_name,country,age,aadharcardnumber) values(405,'Vijay','Sri Lanka',20,729845740967);
insert into customer(cid,customer_name,country,age,aadharcardnumber) values(406,'Sachin','US',33,541387905423);
select * from customer;

-- Showing the product with maximun price
select max(product_price) from product;
-- showing sales with minimum quantity
select min(quantity) from sales;
-- showing all the products which are starting from name 'A'
select * from product where product_name like "A%";
-- showing all the customers which are from 'Australia'
select * from customer where country='Australia';
-- showing all the customets which are from 'Japan' and have age greater than 30
select * from customer where country='Japan' and age>30;
-- showing the products whose price range is 200 and 500
select * from product where product_price between 200 and 500;
-- showing all the sales product where you will list the price and also the total amount paid per sales
select sales.sid,product.pid,product.product_name,product.product_price,sales.quantity,(product_price * quantity) as total 
from sales inner join product on sales.pid=product.pid;
-- showing the products which are having price less than 200 or product name start with 'S'
select * from product where product_price<200 or product_name like "S%";
-- update customer name to 'Shakti' whose id id 402
update customer set  customer_name='Shakti' where cid=402;
select * from customer;
-- showing all the sales id, product id, product name and quantity
select sid,product.pid,product_name,quantity from sales inner join product on sales.pid=product.pid;
-- showing all the customer who are from 'UK','Japan','Sri Lanka' 
select * from customer where country in("UK","Japan","Sri Lanka");
