--Write a PL/SQL program to arrange the number of two variable in such a way that the small number 
--will store in num_small variable and large number will store in num_large variable.
--BASICALLY HERE WE WILL USE THE SWAP METHOD

DECLARE
        num_small number(2) := 8;
        num_large number(2) := 5;
        num_temp number(2);
BEGIN
        IF num_small > num_large THEN
        num_temp := num_small;
        num_small := num_large;
        num_large := num_temp;
        
        DBMS_OUTPUT.PUT_LINE('SMALL NUMBER: ' || num_small);
        DBMS_OUTPUT.PUT_LINE('LARGE NUMBER: ' || num_large);

        END IF;
END;
/
