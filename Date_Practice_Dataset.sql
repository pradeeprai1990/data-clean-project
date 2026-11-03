-- Date Practice Dataset SQL
DROP TABLE IF EXISTS employee_attendance;

CREATE TABLE employee_attendance (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    joining_date DATE,
    birth_date DATE,
    attendance_date DATE,
    salary DECIMAL(10,2)
);

-- MySQL 8+ : generates 1000 rows
WITH RECURSIVE numbers AS (
    SELECT 1 n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000
)
INSERT INTO employee_attendance
(emp_id, emp_name, department, joining_date, birth_date, attendance_date, salary)
SELECT
n,
CONCAT('Employee_', n),
CASE
    WHEN n % 5 = 0 THEN 'HR'
    WHEN n % 5 = 1 THEN 'IT'
    WHEN n % 5 = 2 THEN 'Finance'
    WHEN n % 5 = 3 THEN 'Sales'
    ELSE 'Marketing'
END,
DATE_ADD('2018-01-01', INTERVAL FLOOR(RAND()*2500) DAY),
DATE_ADD('1980-01-01', INTERVAL FLOOR(RAND()*15000) DAY),
DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND()*1000) DAY),
ROUND(30000 + RAND()*90000,2)
FROM numbers;

-- Practice Queries
SELECT YEAR(joining_date) FROM employee_attendance;
SELECT MONTH(joining_date) FROM employee_attendance;
SELECT MONTHNAME(joining_date) FROM employee_attendance;
SELECT DAY(joining_date) FROM employee_attendance;
SELECT DAYNAME(joining_date) FROM employee_attendance;
SELECT QUARTER(joining_date) FROM employee_attendance;
SELECT WEEK(joining_date) FROM employee_attendance;
SELECT WEEKDAY(joining_date) FROM employee_attendance;
SELECT DATEDIFF(CURDATE(), joining_date) FROM employee_attendance;
SELECT DATE_ADD(joining_date, INTERVAL 6 MONTH) FROM employee_attendance;
SELECT DATE_SUB(joining_date, INTERVAL 90 DAY) FROM employee_attendance;
SELECT DATE_FORMAT(joining_date,'%d-%M-%Y') FROM employee_attendance;
SELECT STR_TO_DATE('25-Dec-2024','%d-%b-%Y');
SELECT CURDATE();
SELECT NOW();
SELECT LAST_DAY(joining_date) FROM employee_attendance;
