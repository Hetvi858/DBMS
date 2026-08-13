-- Write a program that prints value 1 to 100 number using LOOP Command.

set serveroutput on

Declare

	
	I number:=1;
Begin
	
	Loop
		
	Dbms_output.put_line(I);
	I:=I+1;
	Exit when I > 100;

	End loop;

End;
/

set serveroutput off