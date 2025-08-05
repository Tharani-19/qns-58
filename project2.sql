create database employee;
use employee;
create table employee_details(
EMPLOYEE_Id int,
FIRST_NAME varchar(40),
LAST_NAME varchar(40),
SALARY int,
JOINING_DATE varchar(100),
DEPARTMENT varchar(150),
primary key(EMPLOYEE_Id)
);
show tables;
select * from employee_details;
insert into employee_details(EMPLOYEE_Id,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)values
(1,"Venkatesh","S","100000","08/28/2015","BANKING"),
(2,"Ragavi","P","75000","08/28/2015","BUSINESS"),
(3,"Gopinath","c","50000","03/02/2016","PHARMA"),
(4,"Dinesh","G","50000","03/02/2016","INSURANCE"),
(5,"Saibabu","E","40000","07/08/2017","SOFTWARE"),
(6,"Hasun","S","29000","07/08/2017","MANUFACTURING"),
(7,"Divya","E","39000","07/08/2017","HEALTHCARE"),
(8,"Aravindan","R","40000","07/08/2017","HEALTHCARE"),
(9,"Sathish","MD","45000","03/02/2016","AUTOMOBILE"),
(10,"Prasanth","PKP","34000","03/02/2016","INSURANCE"),
(11,"Vijay","R","25684","03/02/2016","BUSINESS"),
(12,"Sivakumar","K","54789","03/02/2016","SOFTWARE");

create table incentives(
EMPLOYEE_REF_ID int,
INCENTIVE_DATE VARCHAR(50),
INCENTIVE_AMOUNT int,
foreign key (EMPLOYEE_REF_ID) references employee_details(EMPLOYEE_Id)
);
insert into incentives(EMPLOYEE_REF_ID,INCENTIVE_DATE,INCENTIVE_AMOUNT)values
(1,"01-FEB-16",5000),
(2,"01-FEB-16",3000),
(3,"01-FEB-17",4000),
(1,"01-JAN-17",4500),
(2,"01-JAN-17",3500);

select * from incentives;
select  FIRST_NAME,LAST_NAME FROM employee_details;
select FIRST_NAME as EMPLOYEE_NAME FROM employee_details;
select UPPER (FIRST_NAME) FROM employee_details;
select LOWER(FIRST_NAME) FROM employee_details;
select distinct DEPARTMENT  FROM employee_details;
select substring(FIRST_NAME,1,3) FROM employee_details;
select instr('ragavi','a')as position_of_a;
select rtrim(FIRST_NAME ) as FIRST_NAME from employee_details; 
select ltrim( FIRST_NAME) as FIRST_NAME from employee_details;
select length(FIRST_NAME) from employee_details;
select replace(FIRST_NAME,'a','$')as modified_first_Name from employee_details;
select concat(FIRST_NAME,'-',LAST_NAME)as FIRST_NAME from employee_details;
select substring(joining_date,1,2),substring(joining_date,3,4),substring(joining_date,5,6)from employee_details;
select * from employee_details where (FIRST_NAME)like'%n';
select * from employee_details order by (FIRST_NAME)desc;
select * from employee_details order by (FIRST_NAME) ASC,salary desc;
select * from employee_details where FIRST_NAME = "Dinesh";
select * from employee_details where FIRST_NAME in('Dinesh','Roy');
select * from employee_details where FIRST_NAME not in('Dinesh','Roy');
select * from employee_details where FIRST_NAME like's%';
select * from employee_details where FIRST_NAME like '%v%';
select * from employee_details where FIRST_NAME like'%n';
SELECT *FROM employee_details WHERE FIRST_NAME LIKE '_n'AND CHAR_LENGTH(FIRST_NAME) = 4;
SELECT *FROM employee_details WHERE first_name LIKE 'J_'AND CHAR_LENGTH(first_name) = 4;
SELECT *FROM employee_details WHERE salary > 60000;
SELECT *FROM employee_details WHERE salary < 80000;
SELECT *FROM employee_details WHERE salary BETWEEN 50000 AND 80000;
SELECT *FROM employee_details WHERE first_name IN ('Venkatesh', 'Ragavi');
SELECT * FROM employee_details WHERE Last_Name LIKE ('%');
SELECT  REPLACE(Last_Name, '%', ' ') FROM employee_details;
SELECT department, SUM(salary) AS total_salary 
FROM employee_details 
GROUP BY department;
SELECT department, SUM(salary) AS total_salary 
FROM employee_details 
GROUP BY department 
ORDER BY total_salary DESC;
SELECT department, COUNT(*) AS no_of_employees, SUM(salary) AS total_salary 
FROM employee_details 
GROUP BY department 
ORDER BY total_salary DESC;
SELECT department, AVG(salary) AS avg_salary 
FROM employee_details 
GROUP BY department 
ORDER BY avg_salary ASC;
SELECT department, MAX(salary) AS max_salary 
FROM employee_details 
GROUP BY department 
ORDER BY max_salary ASC;
SELECT department, MIN(salary) AS min_salary 
FROM employee_details 
GROUP BY department 
ORDER BY min_salary ASC;
SELECT YEAR(joining_date) AS join_year, MONTH(joining_date) AS join_month, COUNT(*) AS no_of_employees 
FROM employee_details 
GROUP BY YEAR(joining_date), MONTH(joining_date);
SELECT department, SUM(salary) AS total_salary 
FROM employee_details 
GROUP BY department 
HAVING total_salary > 800000 
ORDER BY total_salary DESC;
SELECT e.first_name, i.incentive_amount 
FROM employee_details e 
JOIN incentives i ON e.EMPLOYEE_ID = i.EMPLOYEE_REF_ID;
SELECT e.first_name, i.incentive_amount 
FROM employee_details e 
JOIN incentives i ON e.EMPLOYEE_ID = i.EMPLOYEE_REF_ID
WHERE i.incentive_amount > 3000;
SELECT e.first_name, i.incentive_amount 
FROM employee_details e 
LEFT JOIN incentives i ON e.EMPLOYEE_ID = i.EMPLOYEE_REF_ID;
SELECT e.first_name, COALESCE(i.incentive_amount, 0) AS incentive_amount 
FROM employee_details e 
LEFT JOIN incentives i ON e.EMPLOYEE_ID= i.EMPLOYEE_REF_ID;
SELECT e.first_name, i.incentive_amount 
FROM employee_details e 
LEFT JOIN incentives i ON EMPLOYEE_ID = i.EMPLOYEE_REF_ID
WHERE i.incentive_amount IS NOT NULL;
SELECT first_name, incentive_amount 
FROM employee_details e
WHERE incentive_amount =(SELECT MAX(incentive_amount) FROM incentives
);
SELECT salary 
FROM employee_details 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;
SELECT salary 
FROM employee_details 
ORDER BY salary DESC 
LIMIT 1;
SELECT salary 
FROM employee_details 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;
SELECT salary 
FROM employee_details 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;






















