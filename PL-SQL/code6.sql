--Find the highest salary and store it in a variable and return it
DECLARE
        v_maxSalary number(10);
BEGIN
        select max(salary) into v_maxSalary from emp;
        dbms_output.put_line(v_maxSalary);
END;
/
