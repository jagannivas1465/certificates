CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    enrolled_on DATE DEFAULT CURRENT_DATE
);


SELECT name FROM students WHERE age > 21 ORDER BY enrolled_on DESC; 

-- Create table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10, 2)
);

-- Insert data
INSERT INTO employees (name, department, salary)
VALUES 
('Alice', 'HR', 60000),
('Bob', 'IT', 75000),
('Charlie', 'Finance', 70000);

-- Retrieve data
SELECT * FROM employees;

-- Update data
UPDATE employees SET salary = 80000 WHERE name = 'Bob';

-- Delete data
DELETE FROM employees WHERE name = 'Charlie';

