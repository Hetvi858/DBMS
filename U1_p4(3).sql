--Write a program that prints value 1 to 100 number using WHILE LOOP Command

set serveroutput on

Declare

	
	I number:=1;
Begin
	
	while I <=100

	loop
		
	Dbms_output.put_line(I);
	I:= I+1;
	End loop;
	

End;
/

set serveroutput off