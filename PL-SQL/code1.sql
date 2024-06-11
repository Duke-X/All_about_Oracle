-- DIVIDE TWO NUMBERS, THEN ADD THE RESULT IN THE SECOND NUMBER
DECLARE
       v_result number(5);
       p_num2 number:= 4;
       p_num1 number:= 2;
BEGIN
       v_result := p_num2/p_num1;
       v_result := p_num2 + v_result;
       dbms_output.put_line(v_result);
END;
/
