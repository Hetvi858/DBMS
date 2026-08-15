/* write a pL/Sql block the find Circumference of Circle */

set serveroutput on
set feedback off
set verify off

declare
	c number:=&choice;
	pi constant number(2,1):=3.14;
	r number(4);
	carea number(3,2);

	l number(5);
	w number(5);
	rarea number(3,2);
	cir number(2,1);

begin
	c:=&choice;
	r:= &r;
	l:=&l;
	w:=&w;
	carea:= pi*power(2,1);

	dbms_output.put_line('The Circumference of Circle :'||carea);
end;
/

set serveroutput off
set feedback on
set verify on

