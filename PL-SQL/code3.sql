--Write a PL/SQL block to show a reserved word can be used as a user-define identifier.
DECLARE
        "DECLARE" varchar(25):= 'THIS IS UPPERCASE';
        "Declare" varchar(25):= 'This is ProperCase';
        "declare" varchar(25):= 'this is lowercase';
BEGIN
        dbms_output.put_line("DECLARE");
        dbms_output.put_line("Declare");
        dbms_output.put_line("declare");
END;
/
