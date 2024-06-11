--print table of 19 using basic loop, while loop
declare
        v_counter number:= 0;
        v_res number;
begin
        LOOP
        v_counter := v_counter + 1;
        v_res := 19 * v_counter;
        DBMS_OUTPUT.PUT_LINE('19 ' || ' X ' || v_counter || ' = ' || v_res);
        EXIT WHEN v_counter >=10;
        END LOOP;
END;
/
--WHILE LOOP
declare
        v_counter number:= 0;
        v_res number;
begin
        while v_counter <= 10 LOOP
        v_res := 19 * v_counter;
        DBMS_OUTPUT.PUT_LINE('19 ' || ' X ' || v_counter || ' = ' || v_res);
        v_counter := v_counter + 1;
        END LOOP;
end;
/
--FOR LOOP
declare
      v_res number;
begin
      FOR v_counter IN 1..10 LOOP
      v_res := v_counter * 19;
      DBMS_OUTPUT.PUT_LINE('19 ' || ' X ' || v_counter || ' = ' || v_res);
      END LOOP;
end;
