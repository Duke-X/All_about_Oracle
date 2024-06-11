--Write a PL/SQL block to calculate the incentive of an employee whose f_name is Vadish

DECLARE
    incentives number(10);
BEGIN
    SELECT (salary * 0.12) INTO incentives FROM emp WHERE f_name = 'Vadish';
    -- Uncomment the following line if you want to output the value within the PL/SQL block
    dbms_output.put_line(incentives);
END;
/
