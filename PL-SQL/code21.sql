--write a function to return area of the circle
create or replace function circle_area(radius number) return number is

pi constant number(7,3) := 3.141;
area number(7,3);

begin
     area := pi * (radius * radius);
     return area;
end;

--calling the function for a reuse
begin
     dbms_output.put_line(circle_area(2));
end;
