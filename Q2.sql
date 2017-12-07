   
    drop TABLE employees;
    drop TABLE departments;

   
   CREATE TABLE departments
    (
        Dep_id number PRIMARY KEY,
        Dep_name varchar2(20)
    );
    
    CREATE TABLE employees
    (
        emp_id number PRIMARY KEY,
        emp_name varchar2(20),
        sex varchar2(20),
        title varchar2(20),
        wage number,
        idcard varchar2(12),
        dep_id number,
        FOREIGN KEY (dep_id) REFERENCES departments(Dep_id)
    );

    insert into departments values (1,'董事会');
    insert into departments values (2,'财务部');
    insert into departments values (3,'人力部');
    insert into departments values (4,'后勤部');
    insert into departments values (5,'勤卫部');

    insert into employees values(1,'王二狗','男','董事长',9999,'100001',1);
    insert into employees values(2,'独孤嘉永','男','会计',999,'100002',2);
    insert into employees values(3,'慕容镇波','男','HR',999,'100003',3);
    insert into employees values(4,'上官欣雨','男','清道夫',99999,'100004',4);
    insert into employees values(5,'东方港华','男','大门保安',999,'100005',5);
    
    commit;