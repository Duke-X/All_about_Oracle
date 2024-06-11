--Build a cursor using cursor parameter as empid of the emp whose emp_id < v_empid and print the firstname of the employee or print it using records
declare
        v_fname varchar2(10);
        CURSOR emp_cursor(v_empid number) IS
        --SELECT f_name from emp where emp_id < v_empid;
        select * from emp where emp_id < v_empid;
        v_rec emp%rowtype;
begin
        OPEN emp_cursor(301);
        LOOP
             --FETCH emp_cursor INTO v_fname;
             FETCH emp_cursor INTO v_rec;
             EXIT WHEN emp_cursor%NOTFOUND;
             DBMS_OUTPUT.PUT_LINE(v_rec.f_name || ' ' || v_rec.l_name);
        END LOOP;
        CLOSE emp_cursor;
end;
