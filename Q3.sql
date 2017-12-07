SET ServerOutput ON;
DECLARE 
    N_wage number :=0; 
Begin
    select employees.wage into N_wage from employees where employees.emp_id = 5; 
    IF N_wage <3000 THEN
        dbms_output.put_line('5号员工原工资为'||N_wage);
        N_wage := N_wage+200;
        UPDATE employees SET employees.wage = N_wage WHERE employees.emp_id = 5;
        commit;
        dbms_output.put_line('5号员工工资已更新。');
        dbms_output.put_line('5号员工工资为'||N_wage);
    ELSE 
        dbms_output.put_line('5号员工工资为'||N_wage);
    END IF;
End;