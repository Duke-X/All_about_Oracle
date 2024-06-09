--ALL ABOUT SELECT COMMANDS

--To make changes directly in the table, by unlocking the table.
select rowid, E.* from Employee E;
--To view all the data of the table except rowid.
select * from Employee;

select L_name, Salary from Employee where Salary > 30000;

select L_name, Salary from Employee where Salary NOT BETWEEN 30000 and 90000;

select L_name, ID, Hire_Date from Employee where Hire_Date > '01-FEB-04' AND Hire_Date < '01-MAY-04' order by Hire_Date;

select L_name, ID from Employee where ID between 300 AND 400 ORDER BY L_name;

select L_name as EMPLOYEE, SALARY as MONTHLY_SALARY from Employee where salary between 10000 AND 100000 AND ID IN (201,301);

select TRUNC(SYSDATE) "DATE" from EMPLOYEE;

select ID, L_name, Salary, (Salary * 1.15) as NEW_SALARY from Employee;

select INITCAP(L_name) as NAME, LENGTH(L_name) as LENGTH from Employee where L_name LIKE 'C%' or L_name LIKE 'R%' or L_name LIKE 'K%';

select L_name, ROUND(MONTHS_BETWEEN('25-MAY-24', Hire_Date)) as MONTHLY_WORKED from Employee order by MONTHLY_WORKED; 

select L_name || ' earns Rs. ' || Salary || ' monthly but wants ' || (Salary * 3) as DREAM from Employee;

select L_name, LPAD(salary, 15, '$') from Employee;

select L_name, Hire_Date, TO_CHAR(Hire_Date, '"Monday, the " fmDdspth "of" Month "," YYYY') as REVIEW from Employee;

select L_name, Hire_Date, TO_CHAR(Hire_Date, 'DAY') as DAY from Employee;

SELECT L_name, NVL(to_char(Salary),'NOT PAID') AS RESULT FROM Employee;

CASE L_name WHEN 'Sharma' THEN 1.10*SALARY
            WHEN 'Raj' THEN 1.20*SALARY
ELSE        SALARY END as "REVISED SALARY"
FROM EMPLOYEE;










