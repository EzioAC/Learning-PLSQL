SET ServerOutput ON;
DECLARE 
    N_wage number :=0; 
    Result varchar2(20);
Begin
    select employees.wage into N_wage from employees where employees.emp_id = 1; 
    Result := CASE
    WHEN N_wage<=3000 THEN '低'
    WHEN N_wage<5000 THEN '中'
    ELSE '高'
    End;
    dbms_output.put_line('1号员工工资评级:'||Result);
End;