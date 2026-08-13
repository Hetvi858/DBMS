/* write a pL/Sql block the find area of circle*/
set serveroutput on

declare
	pi constant number(7,2):= 3.14;
	radius number(5);
	area number(9,2);

begin
	radius:=&radius;
	area:=pi*(radius*radius);
	Dbms_output.put_line('the value of area is :'||area);

end;
/

set serveroutput off
