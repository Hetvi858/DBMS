/* area_of_rectengle*/

set serveroutput on

declare
	length number(6,2):= 3.14;
	width number(6,2);
	area number(9,2);

Begin
	length := &length;
	width  := &width;

	area:= length*width;

	Dbms_output.put_line('area of rectengle is: '||area);

end;
/
set serveroutput off

