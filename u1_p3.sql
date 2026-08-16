/*Write a PL/SQL block to calculate the total, percentage and grade of 
student based on his/her Rollno from RESULT table. (Create RESULT 
table with Rollno, Name, Sub1, Sub2, Sub3, Sub4, Sub5, Total, Per, 
Grade attributes with appropriate data type). */


set serveroutput on
set verify off
set feedback off

declare
    rollno number;
    name varchar2(30);
    class varchar2(10);
    div char(1);
    sub1 number;
    sub2 number;
    sub3 number;
    sub4 number;
    sub5 number;
    total number;
    per number(11,2);
    grade varchar2(14);

begin
    rollno := &rollno;
    name := '&name';
    class := '&class';
    div := '&div';
    sub1 := &sub1;
    sub2 := &sub2;
    sub3 := &sub3;
    sub4 := &sub4;
    sub5 := &sub5;

    total := sub1+sub2+sub3+sub4+sub5;
    per := total/5;

    if per >= 70 then
        grade := 'A';
    elsif per >= 60 then
        grade := 'B';
    elsif per >= 50 then
        grade := 'C';
    elsif per >= 40 then
        grade := 'E';
    else
        grade := 'failed';
    end if;

    dbms_output.put_line(' result');
    dbms_output.put_line('rollno = '||rollno);
    dbms_output.put_line('name = '||name);
    dbms_output.put_line('class = '||class);
    dbms_output.put_line('div = '||div);
    dbms_output.put_line('sub1 = '||sub1);
    dbms_output.put_line('sub2 = '||sub2);
    dbms_output.put_line('sub3 = '||sub3);
    dbms_output.put_line('sub4 = '||sub4);
    dbms_output.put_line('sub5 = '||sub5);
    dbms_output.put_line('total = '||total);
    dbms_output.put_line('per = '||per);
    dbms_output.put_line('grade = '||grade);

    insert into result
    (rollno,name,sub1,sub2,sub3,sub4,sub5,total,per,grade,class,div)
    values
    (rollno,name,sub1,sub2,sub3,sub4,sub5,total,per,grade,class,div);

end;
/

set serveroutput off
set verify on
set feedback on

