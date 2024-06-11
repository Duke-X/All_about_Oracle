--Write a code handle exception
declare
        v_dividend number:= 24;
        v_divisor number:= 0;
        v_res number;
        ex_divZero exception;   --declaring a variable for exception datatype
begin
        IF v_divisor = 0 THEN
           RAISE ex_divZero;    --raise that exception 
        END IF;
        v_res := v_dividend/ v_divisor;
        dbms_output.put_line('Result = ' || v_res);
        
        exception when ex_divZero then
                dbms_output.put_line('ERROR');
end;
