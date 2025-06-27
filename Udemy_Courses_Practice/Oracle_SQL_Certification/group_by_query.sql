SELECT department_id, COUNT(*) FROM employees GROUP BY department_id;

-- Create departments table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);

-- Insert data
INSERT INTO departments (department_id, department_name)
VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');

-- Join query to get employee with department names
SELECT e.name, e.salary, d.department_name
FROM employees e
JOIN departments d ON e.department = d.department_name
WHERE e.salary > 65000;

-- Department-wise average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
