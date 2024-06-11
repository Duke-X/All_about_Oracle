--Build a cursor using a cursor for loop with cursor parameters
declare
        CURSOR c(v_empid number) IS
        SELECT f_name, l_name from emp where emp_id > v_empid;
begin
        FOR L_IDX IN C(200)
        LOOP
            DBMS_OUTPUT.PUT_LINE(L_IDX.f_name || ' ' || L_IDX.l_name);
        END LOOP;
END;
