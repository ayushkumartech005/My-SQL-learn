-- SQL Commands Practice
-- Basic SQL commands

-- 1. Create a table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT
);

-- 2. Insert data
INSERT INTO students (id, name, age)
VALUES (1, 'Ayush', 22);

-- 3. Select data
SELECT * FROM students;

-- 4. Update data
UPDATE students
SET age = 23
WHERE id = 1;

-- 5. Delete data
DELETE FROM students
WHERE id = 1;

-- 6. Drop table
DROP TABLE students;
