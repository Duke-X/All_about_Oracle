--print numbers 1 to 10 and skip 6,8
create table messages(result number(2));
begin
       FOR i IN 1..10 LOOP
       IF i = 6 OR i = 8 THEN
          null;
       ELSE
          insert into messages values(i);
       COMMIT;
       END IF;
       END LOOP;
END;
/
