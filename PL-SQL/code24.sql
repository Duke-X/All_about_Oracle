--PACKAGES
--create a package header
create or replace package pkg_new IS
       FUNCTION prt_strng RETURN varchar2;
       PROCEDURE proc_superhero (f_name varchar2, l_name varchar2);
end pkg_new;

--create package body
create or replace package body pkg_new IS
FUNCTION prt_strng RETURN VARCHAR2 IS
         BEGIN
                   RETURN 'MOSHI MOSHI';
         END prt_strng; 

PROCEDURE proc_superhero (f_name varchar2, l_name varchar2) IS
         BEGIN
                   insert into emp(f_name, l_name) values(f_name, l_name);
         END;
END pkg_new;

--calling function and procedure from package body
begin
       dbms_output.put_line(pkg_new.prt_strng);
end;

begin
       pkg_new.proc_superhero('Captain', 'America');
end;
