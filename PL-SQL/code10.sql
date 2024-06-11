--write a case to make a column for bonus and update it everytime a case condn matches
Declare 
       v_bonus number(10);
       v_emp_id number(5) := 302;
       v_salary number(10);
Begin
       select salary into v_salary from emp where emp_id = v_emp_id; --fetch the salary to compare and match the condition
       v_bonus := 
       CASE
            WHEN v_salary < 100000 THEN 0.10 * v_salary
            WHEN v_salary between 50000 AND 100000 THEN 0.15 * v_salary
            WHEN v_salary > 100000 THEN 0.20 * v_salary
            WHEN v_salary IS NULL THEN 0
            ELSE 0
       END;
update emp set bonus = v_bonus where emp_id = v_emp_id;              --after getting the bonus update it in the bonus column
commit;
END;
/
