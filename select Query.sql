select * from dbo.student;		--all record display
SELECT surname FROM dbo.student; -- specific field record display
SELECT DISTINCT postalcode FROM dbo.student; -- DISTINCT means diffrent (in query display different postalcode in field )
select count(*) city from dbo.student;	-- count city from field 
select count(*) postalcode from dbo.student;  --  " "
select * from dbo.staff where	salary=16000;	-- where check condition
	/*
	*	WHERE clause is used to filter records.
	*	AND and OR operators are used to filter records based on more than one condition.
	*	The AND operator displays a record if all the conditions are TRUE.
	*	The OR operator displays a record if any of the conditions is TRUE.
	*/
select * from dbo.staff where salary<16000;
select * from dbo.staff where salary>16000;
select * from dbo.staff where salary<=16000;
select * from dbo.staff where salary>=16000;
select * from dbo.student where rollno<>6; -- rollno 6 record display no 
select * from dbo.staff where salary between 16000 and 19000; -- between meance center 
select * from dbo.student where city like 'a%' -- a name na city display*
select * from dbo.staff where salary in (15000 , 19500);
select COUNT(*) salary from dbo.staff where salary = 19500; 
select * from dbo.staff where salary = 15000 and subject = 'asp.net'; 
select * from dbo.staff where salary = 15000 or salary = 15500; 
select * from dbo.staff where not salary = 15000 ; 
select * from dbo.staff where salary = 16500;
select * from dbo.staff where salary = 15000 and (subject = 'asp.net' or subject = 'ds');
select * from dbo.staff where salary = 15000 and (not subject = 'asp.net' or subject = 'ds');
	/*
	*	ORDER BY keyword is used to sort the result-set in ascending or descending order.
	*	default ascending 
	*	for acending ues keyword asc & for descending ues keyword desc
	*/
select * from dbo.staff order by salary ;  -- default ascending
select * from dbo.student order by city desc ; -- descending
select * from dbo.staff order by salary , empId ;
select * from dbo.staff order by salary asc ,  empId desc ;

