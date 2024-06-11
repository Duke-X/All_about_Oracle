--make a plsql block to show data of all emp who were hired b/w year 2002 - 2005, find number of employees
declare
       cursor emp_cur is
       select * from emp where hire_date between '01-JAN-2002' AND '31-DEC-2005';
       v_rec emp%rowtype;
Begin
       open emp_cur;
       LOOP
            FETCH emp_cur INTO v_rec;
            EXIT WHEN emp_cur%NOTFOUND;
            dbms_output.put_line(' EmpID : ' || v_rec.emp_id ||
                                 ' F_name: ' || v_rec.f_name);
       END LOOP;
close emp_cur;      
end;
/
