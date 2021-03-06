SELECT concat(FIRST_NAME,' ',LAST_NAME) as EMPLOYEE_NAME, SALARY
FROM employees 
WHERE (SALARY<10000 OR SALARY>15000) AND DEPARTMENT_ID IN (30,100);
SELECT concat(FIRST_NAME,' ',LAST_NAME) as EMPLOYEE_NAME, HIRE_DATE 
FROM employees 
WHERE year(HIRE_DATE)=1987;
SELECT FIRST_NAME 
FROM employees 
WHERE FIRST_NAME like '%c%' and FIRST_NAME like '%b%';
SELECT LAST_NAME,JOB_TITLE,SALARY 
FROM employees 
INNER JOIN jobs
 ON employees.JOB_ID = jobs.JOB_ID
 WHERE (JOB_TITLE='Programmer' or JOB_TITLE='Shipping Clerk') and SALARY not in (4500,10000,15000);
SELECT *
FROM employees
 WHERE LAST_NAME IN ('BLAKE', 'SCOTT', 'KING', 'FORD');