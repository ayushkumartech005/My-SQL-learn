-- SQL Commands Practice
-- MySQL / PostgreSQL Practice


-- =========================
-- CREATE TABLE
-- =========================

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hiring_date DATE,
    salary NUMERIC(10,2)
);


-- =========================
-- INSERT DATA
-- =========================

INSERT INTO employee (name, position, department, hiring_date, salary)
VALUES
('Amit Kuril', 'Project Manager', 'IT', '2022-07-17', 65000),
('Priya Kumari', 'Software Developer', 'IT', '2022-08-18', 75000),
('Anil Kumar', 'Software Engineer', 'IT SELL', '2022-09-18', 85000),
('AnkitKumar', 'HR', 'Hiring', '2022-10-28', 95000);


-- =========================
-- SELECT
-- =========================

SELECT * FROM employee;


-- =========================
-- DELETE
-- =========================

DELETE FROM employee
WHERE employee_id = 2;


-- =========================
-- UPDATE
-- =========================

UPDATE employee
SET name = 'Ayush'
WHERE name = 'Amit Kuril';


UPDATE employee
SET department = 'Hiring',
    salary = 95000
WHERE department = 'HR'
  AND salary = 55000;


SELECT * FROM employee;


-- =========================
-- CREATE COMPANY TABLE
-- =========================

CREATE TABLE company (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(200),
    age INT,
    city VARCHAR
);


SELECT * FROM company;


-- =========================
-- INSERT COMPANY DATA
-- =========================

INSERT INTO company (username, email, age, city)
VALUES
('Muskan', 'muskanpal@gmail.com', 15, 'Kanpur'),
('Nancy', 'Nancypal@gmail.com', 17, 'Delhi'),
('Rupali', 'Rupalising@gmail.com', 22, 'Lucknow'),
('Nupali', 'Nupalising@gmail.com', 32, 'Unnao'),
('Ayushi', 'Ayushiyadav@gmail.com', 42, 'Gurugram');


-- =========================
-- ALTER TABLE
-- RENAME COLUMN
-- =========================

ALTER TABLE company
RENAME COLUMN username TO Full_Name;


SELECT * FROM company;


-- =========================
-- CHANGE DATA TYPE
-- =========================

ALTER TABLE company
ALTER COLUMN age TYPE SMALLINT;


-- =========================
-- ADD NOT NULL CONSTRAINT
-- =========================

ALTER TABLE company
ALTER COLUMN city SET NOT NULL;

-- 18-09-2026

CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hiring_date DATE,
    salary NUMERIC(10,2)
);

-- 18-09-26

DROP TABLE employ

-- DROP TABLE IF IT IS ALREADY EXIST 

DROP TABLE IF EXISTS employee;

CREATE TABLE employees(
employee_id SERIAL PRIMARY KEY,
First_name VARCHAR(100) NOT NULL,
Last_name varchar(50) NOT NULL,
Department VARCHAR(50),
Salry DECIMAL(10,2) CHECK (Salry>0),
Joining_date DATE NOT NULL,
Age INT CHECK (Age>= 18)

);

INSERT INTO employees (First_name, Last_name, department, Salry, Joining_date, age )
VALUES
('AMIT', 'KURIL', 'IT', 65000.00, '2022-05-05', 25),
('ANIL', 'KUMAR', 'HR', 75000.00, '2022-04-04', 26),
('MUSKAN', 'KURIL', 'FINANCE', 85000.00, '2023-02-026', 20),
('TANVEER', 'GUPTA', 'CUSTUMER SUPPORT', 95000.00, '2024-09-03', 28),
('AYUSHI', 'YADAV', 'PEAUN', 5000.00, '2021-04-05', 52);


-- RETRIVE ALL EMPLOYEE FIRST  NAME AND DEPARTMENT

SELECT
	First_name,
	Department
FROM
	employees;



-- UPDATE THE SALARY OF ALL EMPLOYEES IN THE DEPARTMENT OF IT AND INCEARED BY 10%

UPDATE employees
SET Salry = Salry * 1.10
WHERE department = 'IT';



-- DELETE ALL EMPLOYEES WHO ARE OLDER THAN 34 

DELETE FROM employees 
WHERE (Age>34);




-- ADD A NEW COULMN EMAIL TO THE EMPLOYEES TABLE

  ALTER TABLE employees 
  ADD COLUMN email VARCHAR(100);
  
-- RENAME THE DEPARTMENT COLUMN TO DEPTARTMENT_NAME 

ALTER TABLE employees
RENAME COLUMN Department TO DEPARTMENT_NAME;

	 SELECT * FROM employees

	 
-- RETRIVE THE NAMES OF EMPLOYESS WHO JOINS AFTER FEB-2023-26

SELECT 
    first_name,
    joining_date
FROM employees
WHERE joining_date > '2023-02-26';


-- CHANGE THE DATA TYPE OF THE SALARY COLUMN TO INTEGER 

ALTER TABLE employees
ALTER COLUMN salry TYPE INTEGER;



-- LIST OF ALL EMPLOYESS THEIR AGE AND SALARY IN DESENDING ORDER OF SALARY.

SELECT 
    first_name,
    age,
    salry
FROM employees
ORDER BY salry DESC;


-- UPDATE AGE OF EMPLOYEE +1 TO EVERY EMPLOYEE

UPDATE Employees 
SET AGE = AGE+1;

 SELECT * FROM employees


 DROP TABLE IF EXISTS employee3;

CREATE TABLE employee1(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50),
    department VARCHAR(20),
    salary NUMERIC(10,2),
    joining_date DATE,
    age INT
);

 SELECT * FROM employee1;

 -- RETERIVE THE FIRST NAME OR SALARY AND CALULATE A 10% BOMUS ON THE SALARY 

SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY,
	(SALARY * 0.10) AS BONUS
FROM
	EMPLOYEE1;

-- CALCULATE THE ANUAL SALARY AND SALARY INCREMENT BY 5% SHOW THE MONTHELY NEW SALARY AS WELL



SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY,
    (SALARY * 12) AS ANNUAL_SALARY,
    (SALARY * 0.5) AS INCREMENT_SALARY,
    (SALARY + SALARY * 0.5) AS NEW_SALARY
FROM
    EMPLOYEE1;
 
 
-- FIND NAMES WHO AGE IS 30

SELECT
    *
FROM
    EMPLOYEE1
WHERE
    AGE = 30;

-- MATCH ALL EXCEPT AGE 30

SELECT
    *
FROM
    EMPLOYEE1
WHERE
    AGE != 30;

--SALARY IS GRETAR THEN 50000

SELECT *
FROM EMPLOYEE1
WHERE SALARY > 50000;

-- FIND EMPLOYEES WHO SALARY IS GREATER THAN 50000 AND AGE GREATER THAN 40

SELECT * FROM EMPLOYEE1 
WHERE SALARY > 50000 AND AGE = 40;

-- USING OR OPREATERS 

SELECT * FROM EMPLOYEE1 
WHERE AGE>60 OR SALARY >= 90000;

--USING NOT

SELECT * FROM EMPLOYEE1 
WHERE NOT (DEPARTMENT = 'IT');


-- 19-09-2026 SET OPRETORS 



CREATE TABLE Student_2023(
Student_id INT PRIMARY KEY,
Student_name VARCHAR(50),
Course VARCHAR(50)
);


INSERT INTO
	STUDENT_2023 (STUDENT_ID, STUDENT_NAME, COURSE)
VALUES
	(1, 'ARAV SHARMA', 'COMPUTER SCIENCE'),
	(2, 'ISHITA VERMA', 'MECHNICAL ENGINEERING'),
	(3, 'ANANYA DESAI', 'CIVIL ENGINEERING'),
	(4, 'KABIR PATEL', 'ELECTRONICS'),
	(5, 'RAHUL GUPTA', 'COMPUTER SCIENCE');

SELECT * FROM STUDENT_2023;

CREATE TABLE Student_2024(
Student_id INT PRIMARY KEY,
Student_name VARCHAR(50),
Course VARCHAR(50)
);


INSERT INTO
	STUDENT_2024 (STUDENT_ID, STUDENT_NAME, COURSE)
VALUES
	(3, 'ANANYA DESAI', 'CIVIL ENGINEERING'),
	(4, 'KABIR PATEL', 'ELECTRONICS'),
	(5, 'MEERA RAO', 'COMPUTER SCIENCE'),
	(6, 'VIKRAM SINGH', 'MATHMATECIS'),
	(7,'SANYA KAPOOR', 'PHYCIS');

SELECT * FROM STUDENT_2024;

--FUNCTIIONS

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5,2)
);

INSERT INTO products
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);




-- TOTAL QUANTITY AVILABLE OF ALL PRODUCTS

SELECT SUM(quantity) AS TOTAL_QUANTITY 
FROM Products
WHERE Category = 'electronics' AND price > 20000;

-- TOTAL NUMBER OF PRODUCTS USING COUNT 

SELECT COUNT(*) AS TOTAL_PRODUCTS
FROM Products
WHERE Product_name LIKE '%phone%';

-- AVG PRICE OF THE PRODUCTS

SELECT AVG(price )
 AS Average_price 
 from products;

--- AVG PRICE IF THE PRODUCT 

SELECT AVG(price) AS AVERAGE_price
FROM products
WHERE CATEGORY = 'Accessories';

-- MAX AND MIN FUNCTION USE

SELECT MAX(PRICE) AS MAXIMUM_PRICE
FROM PRODUCTS;

SELECT MIN(PRICE) AS MINIMUM_PRICE
FROM PRODUCTS;


-- STRIING FUNCTION 

-- GET ALL THE CATEGORIES IN UPPER CASE 
SELECT UPPER(CATEGORY) AS CAPITAL_CATEGAORY
FROM PRODUCTS;

 -- GET ALL THE CATEGORIES IN LOWER CASE 
SELECT LOWER(CATEGORY) AS CAPITAL_CATEGAORY
FROM PRODUCTS;

-- JOIN THE PRODUCT NAME AND CATEGORY TEXT WITH HYPEN

SELECT CONCAT (Product_name, '-', category)
from products;

-- EXTRACT THE FIRST FIVE CHARACHTER FROM PRODUCTS NAME

SELECT SUBSTRING (Product_name, 1,5)  AS Short_name
FROM PRODUCTS;

-- COUNT LENGTH 
SELECT Product_name, LENGTH(Product_name)
AS COUNT_OF_CHAR
FROM PRODUCTS;

-- REMOVE LEADING AND TRAILING SPACES FROM STRING 

SELECT TRIM('___ MONITAR')  AS TRIM_tEXT 
FROM products;

--REPLACE PHONE WITH DEVICE 

SELECT REPLACE(product_name, 'phone', 'device') AS updated
FROM products;

-- LEFT OR RIGHT FUNCTION 

SELECT LEFT(category, 3) AS category
from products;

-- LEFT OR RIGHT FUNCTION 

SELECT RIGHT(category, 3) AS category
from products;


--21-09-2026

 -- DATE AND TIME FUNCTIONS 

 -- NOW()--- IT IS USED FOR TO GET CUREENT DATE OR TIME

SELECT NOW() AS CUREENT_DATE;


-- CUREENT_DATE() --- IT IS USED FOR GET CUREENT DATE ONLY 

SELECT CURRENT_DATE AS today_date;

-- EXTRACT -- IT IS USED FOR PART OF DATE 
SELECT 
    product_name,
    EXTRACT(YEAR FROM added_date) AS year_added
FROM products;


-- AGE() --- CALCULATE AGE BETWEEN DAYS
-- CALCULATE THE TIME DIFFRENCE BETWEEN ADDED_DATE AND TODAY DATE 


SELECT Product_name,
AGE(CURRENT_DATE, ADDED_DATE ) AS SINCE_DATE
FROM PRODUCTS;


-- TO CHAR()--- FORMAT DATES OR STRING 


--- FORMATE ADDED DATE IN A CUSTOM FORMAT (DD-MM--YYYY)

SELECT 
PRODUCT_NAME, 
TO_CHAR (ADDED_DATE, 'DD-MM-YYYY')
AS FORMATED_DATE 
FROM PRODUCTS

-- DATE PART()---- GET SPECFIC DATE PART

-- EXTRACT THE DAY OF THE WEEK FROM ADDED_DATE ?

SELECT 	Product_name,
DATE_PART('DOW', ADDED_DATE) AS DAY_OF_WEEK 
FROM PRODUCTS;


-- DATE_TRUN()-- TRUNCIATE DATE TO PRECSION 

-- TRUNICATE ADDED DATE TO THE START OF THE MONTH 
SELECT 
    PRODUCT_NAME,
    ADDED_DATE,
    DATE_TRUNC('WEEK', ADDED_DATE) AS WEEK_START,
    DATE_PART('DOW', ADDED_DATE) AS DAY_OF_WEEK
FROM PRODUCTS;


-- CONDITIONAL FUNCTION 

--- CASE FUNCTION 

/* EXPENSHIVE IF THE PRICE IS GRATER THEN OR EQUAL TO 50000.
MODERATE IF THE ORICE IS BETWEEN 10000 AND 49999 AFFORDABLE IF THE ORICE IS LESS THEN 10000 */

SELECT Product_name, price,
CASE

WHEN PRICE >= 50000 THEN 'EXPENSIVE'
WHEN PRICE >= 10000 AND PRICE < 49999 THEN 'MODERATE'
ELSE 'AFFORDABLE'
END AS PRICE_CATEGORY

FROM PRODUCTS;




