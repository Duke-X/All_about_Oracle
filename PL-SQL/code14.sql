--Build a cursor to show all the rows and columns of the emp whose empid>=301
--Here records is also used, in order to fetch one row at a time and traverse through each column and cursor to print these values of all rows one by one 
declare
      v_name varchar2(10);
      cursor emp_cur is select * from emp where emp_id >=301;
      v_rec emp%rowtype;
begin
      OPEN emp_cur;
      LOOP
           FETCH emp_cur INTO v_rec;
           EXIT WHEN emp_cur%NOTFOUND;
           DBMS_OUTPUT.PUT_LINE(v_rec.f_name || ' ' || v_rec.l_name);
      END LOOP;
      CLOSE emp_cur;
end;
