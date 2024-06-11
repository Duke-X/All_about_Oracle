--ERROR OCCURING INVALID NUMBER, DOUBT
DECLARE
        v_emp_id number(5) := 401;
        v_f_name varchar2(10) := 'Peshal';
        v_l_name varchar2(10) := 'Ghanghas';
        v_dept_id number(5) := 11335;
BEGIN
        insert into emp (emp_id, f_name, l_name, dept_id, salary, hire_date) values (v_emp_id, v_f_name, v_l_name, v_dept_id, NULL, NULL);
        dbms_output.put_line('Command executed successfully');
END;
/
