--Write a PL/SQL program to check whether a date falls on weekend i.e. SATURDAY or SUNDAY.
declare 
        dt DATE := TO_DATE('&new_dt', 'DD-MON-YYYY');
        day varchar2(15);
begin
        day := to_char(dt, 'DAY');
        IF day in ('SATURDAY', 'SUNDAY') THEN
        dbms_output.put_line('The day ' || day || 'falls on weekend');
        ELSE
        dbms_output.put_line('The day ' || day || 'is a working day');
        END IF;
END;
/
