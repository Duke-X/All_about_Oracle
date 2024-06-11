--Build a cursor using a cursor for loop and print the fname and the lname of the employee
declare
        CURSOR emp_curs IS
        SELECT f_name, l_name from emp where emp_id > 200;
begin
        FOR loop_index IN emp_curs
        LOOP
            DBMS_OUTPUT.PUT_LINE(loop_index.f_name || ' ' || loop_index.l_name);
        END LOOP;
end;
