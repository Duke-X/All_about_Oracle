--Made 3 tables to perform JOINS operation
select * from Emp ;
select * from Dept;
select * from Locn;

select e.f_name, d.dept_Id, d.dept_name from Emp e, Dept d where e.dept_id = d.dept_id;

select d.dept_name, l.loc_id, l.loc_name from Dept d JOIN Locn l ON d.loc_id = l.loc_id where d.loc_id = 3 OR l.loc_id = 5; 

select e.f_name, d.dept_name, l.loc_id, l.loc_name, e.salary from Emp e JOIN Dept d ON (e.dept_id = d.dept_id) JOIN Locn l ON (d.loc_id = l.loc_id) where e.Salary>30000;

select e.f_name, d.dept_name from Emp e JOIN Dept d ON(e.dept_id = d.dept_id) where e.f_name LIKE '_i%';

select e.f_name, d.dept_id, d.dept_name, l.loc_name from Emp e JOIN Dept d ON(e.dept_id = d.dept_id) JOIN Locn l ON(d.loc_id = l.loc_id) where l.loc_name = 'Gurugram'; 

select e.f_name, e.hire_date from emp e where e.hire_date > '22-MAR-04';

select ROUND(MAX(Salary)) Maximum, ROUND(MIN(Salary)) Minimum, ROUND(SUM(Salary)) Sum, ROUND(AVG(Salary)) Average from Emp;

select f_name, ROUND(MAX(Salary)) Maximum, ROUND(MIN(Salary)) Minimum, ROUND(SUM(Salary)) Sum, ROUND(AVG(Salary)) Average from Emp group by f_name;

select dept_id, count(dept_name) from dept group by dept_id;

select (max(salary) - min(salary)) as Difference from Emp;

select d.dept_name as NAME, l.loc_id as LOCATION, count(e.emp_id) as NUMBER_OF_PEOPLE, round(avg(e.salary),2) as SALARY from emp e,dept d,locn l 
where e.dept_id = d.dept_id and d.loc_id = l.loc_id group by d.dept_name,d.loc_id, l.loc_id;

select count(emp_id) as TOTAL, 
SUM(CASE WHEN TO_CHAR(hire_date, 'YYYY') = '2004' THEN 1 ELSE 0 END) as Year2004,
SUM(CASE WHEN TO_CHAR(hire_date, 'YYYY') = '2003' THEN 1 ELSE 0 END) as Year2003
from emp; 

select d.dept_name as JOB,
(CASE WHEN d.dept_id = 11280 THEN e.Salary ELSE NULL END) as DEPT11280,
(CASE WHEN d.dept_id = 11217 THEN e.Salary ELSE NULL END) as DEPT11217,
(CASE WHEN d.dept_id = 11192 THEN e.Salary ELSE NULL END) as DEPT11192
from emp e, dept d where e.dept_id = d.dept_id;


