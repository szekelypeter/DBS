SELECT distinct(DEPARTMENT_ID) 
FROM employees;
SELECT *
FROM employees
 ORDER BY FIRST_NAME DESC;
SELECT SUM(SALARY) 
FROM employees;
SELECT MAX(SALARY),MIN(SALARY) 
FROM employees;

SELECT COUNT(EMPLOYEE_ID), AVG(SALARY) 
FROM employees;

SELECT COUNT(*)
FROM job_history
 RIGHT OUTER JOIN employees 
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID 
WHERE END_DATE is null;
SELECT COUNT(DISTINCT(JOB_ID)) 
FROM employees;
SELECT upper(FIRST_NAME)
 FROM employees;
SELECT substring(FIRST_NAME,1,3) 
FROM employees;
SELECT concat(FIRST_NAME,' ',LAST_NAME) 
FROM employees;
SELECT trim(FIRST_NAME)
 FROM employees;
SELECT length(concat(FIRST_NAME,LAST_NAME)),FIRST_NAME,LAST_NAME
F ROM employees
SELECT *
FROM employees 
LIMIT 10;