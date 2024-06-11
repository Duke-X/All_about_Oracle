--procedures can also be reused but they doesn't return a value
--create a procedure and call it 
create or replace procedure squareArea(side number) is

area number(5,3);

begin
     area := side * side;
     dbms_output.put_line(area);
end squareArea;
/

--calling a procedure
begin
squareArea(2);
end;      
