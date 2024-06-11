--write an exception handling code using pragma exception_init function
declare
        age number := &var_age;
        expt_age exception;
        PRAGMA exception_init(expt_age, -20000);
begin
        if age < 18 then
           raise_application_error(-20000, 'You should be above 18, get out');
        end if;
        dbms_output.put_line('What would you like?');
        exception when expt_age then 
                  dbms_output.put_line(sqlerrm);
end;
