set serveroutput on
set feedback off
set verify off
Declare
	feet number(10,2);
	cm number(10,2);
	inch number(10,2);
	meter number(10,2);
Begin
	feet:= &feet;
	cm:= feet*30.38;
	inch:=feet * 12;
	meter:=feet * 0.3048;

	Dbms_output.put_line('feet :'||feet);
	Dbms_output.put_line('centimeter :'||cm);
	Dbms_output.put_line('inch :'||inch);
	Dbms_output.put_line('meter :'||meter);
End;
/
set serveroutput off
set feedback on
set verify on

