
set serveroutput on
set verify off
set feedback off

Declare
	pname varchar2(20);
	qty number(5);
	price number(7,2);
	tp number(7,2);
	discount    number(5);
	fp number(7,2);
begin
	pname:= '&pn';
	qty:= &qty;
	price:= &price;
	discount:= &discount;

	tp:= qty*price;
	fp:= (tp-(tp*discount/100));

	Dbms_output.put_line('The product name is:- '||pname);
	Dbms_output.put_line('total qty is:- '||qty);
	Dbms_output.put_line('Total price  is:- '||price);
	Dbms_output.put_line('Total discount is:- '||discount);
	Dbms_output.put_line('final price is:- '||fp);
	
	
	
	
end;
/

set serveroutput off
set verify on
set feedback on


