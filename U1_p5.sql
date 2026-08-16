/*Write a PL/SQL block which displays gross salary of employees as per 
user input EID. (Consider EMP table with EID, EName, Deptno, 
Deptname Gender, Age, BasicSal) with appropriate data types.) 
Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: HRA = 
15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic.*/

set serveroutput on
set feedback off
set verify off

Declare
	v_eid number(5);
	v_ename varchar(10);
	v_deptno number(6);
	v_deptname varchar(10);
	v_gender varchar(6);
	v_basic_sal number(21);
	v_age number(3);
	
        v_hra number(10,2);
	v_da number(10,2);
	v_medical number(10,2);
	v_pf number(10,2);
	v_totalsal number(10,2);
	v_grosssal number(10,2);
	
Begin
	v_eid:= &eid;

	select ename, deptno, deptname, gender, age, basic_sal into v_ename, v_deptno, v_deptname, v_gender, v_age,
        v_basic_sal from emp where eid = v_eid;
 
	v_hra := v_basic_sal * 0.15; 
	v_da := v_basic_sal * 0.50; 
	v_medical := 500; 
	v_pf := v_basic_sal * 0.10; 
 
v_totalsal := v_basic_sal + v_hra + v_da + v_medical; 
 
v_grosssal := v_totalsal- v_pf; 
 
dbms_output.put_line('employee salary details'); 
 
dbms_output.put_line('employee id: '|| v_eid); 
dbms_output.put_line('employee name:'|| v_ename); 
dbms_output.put_line('department no: ' || v_deptno); 
dbms_output.put_line('department name: ' || v_deptname); 
dbms_output.put_line('gender:'|| v_gender); 
dbms_output.put_line('age:' || v_age); 
 
dbms_output.put_line('basic salary: rs. '|| v_basic_sal); 
dbms_output.put_line('hra (15%) : rs. ' || v_hra); 
dbms_output.put_line('da (50%) : rs. ' || v_da); 
dbms_output.put_line('medical  : rs. ' || v_medical); 
dbms_output.put_line('total salary: rs. ' || v_totalsal); 
dbms_output.put_line('pf (10%): rs. ' || v_pf); 
dbms_output.put_line('gross salary : rs. ' || v_grosssal); 
exception 
    when no_data_found then 

        dbms_output.put_line('employee id not found.'); 
 
    when others then 
        dbms_output.put_line('error :' || sqlerrm); 
end; 
/ 
 
set serveroutput off 
set feedback on 
set verify on

