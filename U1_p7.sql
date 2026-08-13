--Write a PL/SQL block which converts temperature from Celsius to Fahrenheit.

set serveroutput on
Declare
	choice number(6);
	celsius number(6);
	fahrenheit number(6);

Begin
	choice:=&choice;
	if choice =1 then
	celsius:=&celsius;
	fahrenheit:=(celsius *9/5)+ 32;
	
	Dbms_output.put_line('value of fahrenheit: '||fahrenheit);

	elseif choice 2 then
	
	fahrenheit:= &fahrenheit;
	celsius (fahrenheit -32)*5/9;

	Dbms_output.put_line('value of celsuis: '||celsius||'c');
	
	else

	Dbms_output.put_line('invalid choice...');

	end if;
	


End;
/

set serveroutput off
