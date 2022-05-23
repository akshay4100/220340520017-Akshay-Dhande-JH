/*
1. Write a stored procedure by the name of PROC1 that accepts two varchar strings as parameters. Your procedure should then determine if the first varchar string 
exists inside the varchar string. For example, if string1 = ‘DAC’ and string2 =  ‘CDAC, then string1 exists inside string2. The stored procedure should insert the 
appropriate message into a suitable TEMPP output table. Calling program for the  stored procedure need not be written.
*/
use exam;

create table tempp
(
	STR1 char(15),
    STR2 char(15),
    CHECKS char(35)
);


delimiter //
create procedure PROC1(s1 char(15), s2 char(15))
begin
	declare x int;
    set x = instr(s2,s1);
	if x=0 then
		insert into tempp values(s1,s2,'not exists');
	else 
		insert into tempp values(s1,s2,'exists');
    end if;
end; //
delimiter ;

call PROC1('DAC','CDAC');

select * from tempp;

drop table tempp;
drop procedure PROC1;






/*
2. Create a stored function by the name of FUNC1 to take three parameters, the 
sides of a triangle. The function should return a Boolean value:- TRUE if the 
triangle is valid, FALSE otherwise. A triangle is valid if the length of each side is 
less than the sum of the lengths of the other two sides. Check if the dimensions 
entered can form a valid triangle. Calling program for the stored function need not 
be written.
*/

create table tempp
(
	S1 int,
    S2 int,
    S3 int,
    CHECKS char(25)
);

delimiter //
create function FUNC1(s1 int,s2 int,s3 int)
returns boolean
deterministic 
begin

	if s1+s2 > s3 and s2+s3 = s1 and s3+s1 > s2 then
		return true;
	else
		return false;
	end if;
end; //
delimiter ;

delimiter //
create procedure PQR(s1 int,s2 int,s3 int)
begin
	declare x boolean;
    set x = FUNC1(s1,s2,s3);
	if x=true then
		insert into tempp values(s1,s2,s3,'Triangle is valid');
	else 
		insert into tempp values(s1,s2,s3,'Triangle not is valid');
    end if;
end; //
delimiter ;

select FUNC1(2,8,10) from dual;
call PQR(2,8,10);
call PQR(4,8,10);

select * from tempp;
drop table tempp;
drop function FUNC1;
drop procedure PQR;



