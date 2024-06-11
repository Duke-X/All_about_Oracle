--write a exception handling code using raise_application_error
declare
        age NUMBER := &var_age;
begin
        if age < 18 then   --we will use an inbuilt function here to print error and it's msg side by side
           raise_application_error(-20008, 'You should be above 18, get out');
        end if;
        dbms_output.put_line('What would you like?');
        exception when others then         --when there is no exception name, we use 'others'
                  dbms_output.put_line(sqlerrm);
end;
