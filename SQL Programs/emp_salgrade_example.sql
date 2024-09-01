CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE emp (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    deptno INT,
    salary DECIMAL(10, 2),
    job VARCHAR(50)
);

CREATE TABLE salgrade (
    grade INT PRIMARY KEY,
    losal DECIMAL(10, 2),
    hisal DECIMAL(10, 2)
);


-- Inserting data into emp table
INSERT INTO emp (empno, ename, deptno, salary, job) VALUES
(7839, 'King', 10, 5000.00, 'President'),
(7566, 'Jones', 20, 2975.00, 'Manager'),
(7698, 'Blake', 30, 2850.00, 'Manager'),
(7782, 'Clark', 10, 2450.00, 'Manager'),
(7788, 'Scott', 20, 3000.00, 'Analyst'),
(7902, 'Ford', 20, 3000.00, 'Analyst'),
(7844, 'Turner', 30, 1500.00, 'Salesman'),
(7900, 'James', 30, 950.00, 'Clerk'),
(7654, 'Martin', 30, 1250.00, 'Salesman'),
(7499, 'Allen', 30, 1600.00, 'Salesman'),
(7521, 'Ward', 30, 1250.00, 'Salesman'),
(7934, 'Miller', 10, 1300.00, 'Clerk');

-- Inserting data into salgrade table
INSERT INTO salgrade (grade, losal, hisal) VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);
 
 -- Create employee_vu view

CREATE VIEW employee_vu AS
SELECT empno AS "Employee Number", ename AS "EMPLOYEE", deptno AS "Department Number"
FROM emp;

-- Display contents of employee_vu view
SELECT * FROM employee_vu;

-- Create SALARY_VU view
CREATE VIEW SALARY_VU AS
SELECT e.ename AS "Employee", e.salary AS "Salary", s.grade AS "Grade"
FROM emp e
JOIN salgrade s ON e.salary BETWEEN s.losal AND s.hisal;

-- Display contents of SALARY_VU view
SELECT * FROM SALARY_VU;

-- Describe DEPT50 (assuming DEPT50 exists)
-- Assuming DEPT50 is a view, you can't use DESCRIBE directly. You can use SHOW CREATE VIEW instead.
SHOW CREATE VIEW DEPT50;

-- Update emp table to reassign "Levi Mario" to department 80
UPDATE emp SET deptno = 80 WHERE ename = 'Levi Mario';

-- Create index on deptno column of emp table
CREATE INDEX emp_deptno_index ON emp(deptno);

-- Drop index on deptno column of emp table
-- DROP INDEX emp_deptno_index;

-- Create index on job and salary columns of emp table
CREATE INDEX emp_job_sal_index ON emp(job, salary);

-- Drop index on job and salary columns of emp table
-- DROP INDEX emp_job_sal_index;

