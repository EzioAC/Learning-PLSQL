SET ServerOutput ON;
DECLARE 
    Name varchar2(20):='';
    I_count integer :=0;
Begin
    select count(departments.Dep_name) into I_count from departments where departments.Dep_id = 6; 
    IF I_count = 1 THEN
        select departments.Dep_name into Name from departments where departments.Dep_id = 6;
        dbms_output.put_line('6号部门为'||Name);
    ELSE
        insert into departments values (6,'后勤部');
        commit;
        dbms_output.put_line('添加后勤部.');
    END IF;
End;