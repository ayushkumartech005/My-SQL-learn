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


