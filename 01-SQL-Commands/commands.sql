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
