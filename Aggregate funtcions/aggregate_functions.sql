SELECT JOB_ID, COUNT(*) 
FROM employees 
GROUP BY JOB_ID;
SELECT MANAGER_ID,MIN(SALARY)
 FROM employees
 GROUP BY MANAGER_ID;
SELECT DEPARTMENT_ID,SUM(SALARY)
 FROM employees 
GROUP BY DEPARTMENT_ID;
SELECT JOB_TITLE,AVG(SALARY)
 FROM employees 
LEFT OUTER JOIN jobs 
ON jobs.JOB_ID=employees.JOB_ID
 WHERE JOB_TITLE<>'Programmer' 
GROUP BY JOB_TITLE;
SELECT JOB_ID,MAX(SALARY)
 FROM employees
 GROUP BY JOB_ID 
HAVING MAX(SALARY)>=4500;
SELECT departments.DEPARTMENT_NAME,COUNT(*) as EMPLOYEE_NUMBER_OF_DEPARTMENT,AVG(SALARY)
 FROM employees 
LEFT OUTER JOIN departments 
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID 
GROUP BY departments.DEPARTMENT_NAME 
HAVING EMPLOYEE_NUMBER_OF_DEPARTMENT>10;