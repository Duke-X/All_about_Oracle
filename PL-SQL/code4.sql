--Write a PL/SQL block to insert data to a table using character type variable.
DECLARE
        change_name number(1);
BEGIN
        update emp set l_name = 'Chhatwal' where l_name = 'Sharma';
        change_name := sql%rowcount;        --when row is updated, we can use sql%rowcount to check number of rows updated
        dbms_output.put_line(change_name);
END;
/
