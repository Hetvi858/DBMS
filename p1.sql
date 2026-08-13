--write a simple plsql code block which does sum of two number

SET SERVEROUTPUT ON
Declare 
	A number(5) := 10;
	B number(5);
	c number(5);

Begin
	B:=5;
	c:=(A-B);
	DBMS_OUTPUT.PUT_LINE('THE SUM OF:'||A||' - '||B||' = '||C);
END;
/
SET SERVEROUTPUT OFF
