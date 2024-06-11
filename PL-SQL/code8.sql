--Write a PL/SQL program to check whether a number is even or odd.
DECLARE
        num number(2) := &num;
BEGIN
        IF MOD(num,2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is even');
        ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is odd');
        
        END IF;
END;
/
