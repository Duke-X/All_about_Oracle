--ALL ABOUT SELECT COMMANDS

--To make changes directly in the table, by unlocking the table.
select rowid, E.* from Employee E;

--To view all the data of the table except rowid.
select * from Employee;

--Use of where clause and > symbol
select L_name, Salary from Employee where Salary > 30000;

--Use of AND operator and NOT, BETWEEN clause, to check whether they lie in that range or not
select L_name, Salary from Employee where Salary NOT BETWEEN 30000 and 90000;

--Use of order by to keep the order either ascending or descending.
select L_name, ID, Hire_Date from Employee where Hire_Date > '01-FEB-04' AND Hire_Date < '01-MAY-04' order by Hire_Date;
select L_name, ID from Employee where ID between 300 AND 400 ORDER BY L_name;

--Use of IN clause to check if these values are present in table or not, also used AS to give columns or tables an alias.
select L_name as EMPLOYEE, SALARY as MONTHLY_SALARY from Employee where salary between 10000 AND 100000 AND ID IN (201,301);

--Use of TRUNC (truncates the values) function and SYSDATE (tells the present time and date) function
select TRUNC(SYSDATE) "DATE" from EMPLOYEE;

select ID, L_name, Salary, (Salary * 1.15) as NEW_SALARY from Employee;

--Use of INITCAP (1st word capital), LENGTH (Finds the length of the data), LIKE clause, which can be used using % or _
select INITCAP(L_name) as NAME, LENGTH(L_name) as LENGTH from Employee where L_name LIKE 'C%' or L_name LIKE 'R%' or L_name LIKE 'K%';

--Use of ROUND and MONTHS_BETWEEN function, as the name specifies it rounds of the value to the first date of the next month
select L_name, ROUND(MONTHS_BETWEEN('25-MAY-24', Hire_Date)) as MONTHLY_WORKED from Employee order by MONTHLY_WORKED; 

-- || is used to connect sentences
select L_name || ' earns Rs. ' || Salary || ' monthly but wants ' || (Salary * 3) as DREAM from Employee;

-- LPAD & RPAD function is used to fill the spaces with specific character
select L_name, LPAD(salary, 15, '$') from Employee;

--Use of TO_CHAR func to change the format to character, and use of different format of date 
select L_name, Hire_Date, TO_CHAR(Hire_Date, '"Monday, the " fmDdspth "of" Month "," YYYY') as REVIEW from Employee;

--Use of TO_CHAR to find the day of the hiredate 
select L_name, Hire_Date, TO_CHAR(Hire_Date, 'DAY') as DAY from Employee;

--NVL is used to fill in the 2nd values if given data is NULL
SELECT L_name, NVL(to_char(Salary),'NOT PAID') AS RESULT FROM Employee;

--CASE Statements is similar to as in other languages
CASE L_name WHEN 'Sharma' THEN 1.10*SALARY
            WHEN 'Raj' THEN 1.20*SALARY
ELSE        SALARY END as "REVISED SALARY"
FROM EMPLOYEE;










