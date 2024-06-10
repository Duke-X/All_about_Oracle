--WHY WE USE SUB QUERIES?
--So that we get a more dynamic approach, if we hardcore the values of subqueries with outer queries and imagine new data is added in the table,
--the value of sub query might change so in order for that to not happen we use sub queries
select * from ep;

--find employees whose salary is more than the average salary earned by all the employees
select * from ep where salary > (select avg(salary) from ep);

--find employees who earn highest salary in each department
select * from ep where (department,salary) in (select department, max(salary) from ep group by department);

--find department who do not have any employees
select * from ep where department not in (select distinct department from ep); --return empty table
--as all emp have a dept

--display last name, hiredate, of emp in same dept as Brown, exclude Brown
select lastname, hiredate from ep where department = (select department from ep where lastname = 'Brown')
AND lastname <> 'Brown';

--display lastname, empid, salary of emp who earn more than the avg salary, sort by salary in asc order
select lastname, employeeid, salary from ep where salary > (select avg(salary) from ep) order by salary;

--display emp numbers, last names of emp who work in a dept with emp whose lastname contains 'o'
select employeeid, lastname from ep where department = (select distinct department from ep where lastname LIKE '%o')

--display lastname, dept_id, job_id of all emp whose dept hiredate year = 2021
SELECT lastname, department, jobtitle
FROM ep
WHERE hiredate IN (
    SELECT hiredate
    FROM ep
    WHERE hiredate BETWEEN TO_DATE('01-JAN-21', 'DD-MON-RR') AND TO_DATE('31-DEC-21', 'DD-MON-RR')
);

--display dept_id, l_name, dept_name from emp, dept table such that dept_name are same
SELECT d.dept_id, e.l_name, d.dept_name
FROM emp e
JOIN dept d ON e.dept_id = d.dept_id
WHERE d.dept_name IN (SELECT dept_name FROM dept WHERE dept_name = 'DevOpsEng');


SELECT * FROM SALESMAN;
SELECT * FROM ORDERS;
SELECT * FROM CUSTOMER;

SELECT * FROM ORDERS WHERE SALESMANID = (SELECT SALESMAN_ID FROM SALESMAN WHERE FIRSTNAME = 'Paul');

SELECT * FROM ORDERS WHERE SALESMANID IN (SELECT SALESMAN_ID FROM SALESMAN WHERE CITY = 'London');

--salesman nikalo jiski customer id = 3007 hai, now display all it's orders
--SELECT * FROM ORDERS WHERE SALESMANID IN (SELECT  SALESMANID FROM ORDERS WHERE CUSTOMERID = 3007); 
SELECT * FROM ORDERS WHERE PURCH_AMT > (SELECT AVG(PURCH_AMT) FROM ORDERS WHERE ORDERDATE = '10-OCT-12');

SELECT * FROM ORDERS WHERE SALESMANID IN (SELECT SALESMAN_ID FROM SALESMAN WHERE CITY = 'New York');

SELECT COMMISSION FROM SALESMAN WHERE SALESMAN_ID IN (SELECT SALESMANID FROM CUSTOMER WHERE CITY = 'Paris');

--important
--SELECT * FROM CUSTOMER WHERE CUSTOMERID IN (SELECT SALESMAN_ID - 2001 FROM SALESMAN WHERE FIRSTNAME = 'Mc');
SELECT GRADE, COUNT(*) FROM CUSTOMER WHERE GRADE > (SELECT AVG(GRADE) FROM CUSTOMER WHERE CITY = 'New York') GROUP BY GRADE;

SELECT * FROM ORDERS WHERE SALESMANID IN (SELECT SALESMAN_ID FROM SALESMAN WHERE COMMISSION = (SELECT MAX(COMMISSION) FROM SALESMAN));

SELECT O.ORDER_NO, O.PURCH_AMT, O.ORDERDATE, O.CUSTOMERID, O.SALESMANID, C.FIRSTNAME FROM ORDERS O JOIN CUSTOMER C ON 
(O.CUSTOMERID = C.CUSTOMERID) WHERE O.ORDERDATE IN (SELECT ORDERDATE FROM ORDERS WHERE ORDERDATE = '17-AUG-12'); 
--OR 
SELECT O.*, C.FIRSTNAME FROM ORDERS O, CUSTOMER C WHERE O.CUSTOMERID = C.CUSTOMERID AND O.ORDERDATE IN ('17-AUG-12');

--important
SELECT SALESMAN_ID, FIRSTNAME FROM SALESMAN S WHERE 1 < (SELECT COUNT(*) FROM CUSTOMER WHERE SALESMANID = S.SALESMAN_ID);
SELECT * FROM ORDERS A WHERE PURCH_AMT > (SELECT AVG(B.PURCH_AMT) FROM ORDERS B WHERE B.CUSTOMERID = A.CUSTOMERID);
SELECT * FROM CUSTOMER WHERE GRADE <> (SELECT GRADE FROM CUSTOMER WHERE CITY = 'London' AND NOT GRADE IS NULL);

--important
SELECT S.FIRSTNAME, S.CITY, SUM(O.PURCH_AMT) FROM SALESMAN S, ORDERS O, CUSTOMER C WHERE S.SALESMAN_ID = O.SALESMANID AND O.CUSTOMERID = C.CUSTOMERID
GROUP BY S.FIRSTNAME, S.CITY HAVING S.CITY IN (SELECT DISTINCT CITY FROM CUSTOMER);













