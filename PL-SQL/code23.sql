--Calling Notations for PL/SQL subroutines
create or replace function add_sum(n1 number, n2 number default 0, n3 number) return number is
result number(5);
begin
dbms_output.put_line('NUMBER 1 -> ' || n1);
dbms_output.put_line('NUMBER 2 -> ' || n2);
dbms_output.put_line('NUMBER 3 -> ' || n3);
return n1+n2+n3;
end;
--call the function
declare 
var_result number;
begin
var_result := add_sum(n1 => 3, n3 => 5);
dbms_output.put_line(var_result);
end;
