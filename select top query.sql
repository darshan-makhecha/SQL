SELECT TOP 5 * FROM dbo.staff; -- top meanse first  it display first 5 record 
SELECT TOP 50 PERCENT * FROM dbo.staff; -- disaplay 50% data from table
SELECT TOP 3 * FROM dbo.student WHERE city = 'rajkot'; 
SELECT MIN(salary) AS SmallestPrice FROM dbo.staff; --it display minimum salary 
SELECT Max(salary) AS LargestPrice FROM dbo.staff; --it display maximum salary 
SELECT count(id) FROM dbo.Numeriuc;   -- count which id
SELECT SUM(salary) FROM dbo.Numeriuc;  -- sum of all salary
SELECT avg(salary) FROM dbo.Numeriuc;  -- average of salary 
/*
*				LIKE operator
*	The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
*	There are two wildcards 
*	The percent sign (%) represents zero, one, or multiple characters
*	The underscore sign (_) represents one, single character
*	WHERE <Table name> LIKE 'a%'	=>		Finds any values that start with "a"
*	WHERE <Table name> LIKE '%a'	=>		Finds any values that end with "a"
*	WHERE <Table name> LIKE '%or%'	=>		Finds any values that have "or" in any position
*	WHERE <Table name> LIKE '_r%'	=>		Finds any values that have "r" in the second position
*	WHERE <Table name> LIKE 'a_%'	=>		Finds any values that start with "a" and are at least 2 characters in length
*	WHERE <Table name> LIKE 'a__%'	=>		Finds any values that start with "a" and are at least 3 characters in length
*	WHERE <Table name> LIKE 'a%o	=>		Finds any values that start with "a" and ends with "o"
*/
 SELECT * FROM dbo.staff WHERE empName LIKE 'p%';
 SELECT * FROM dbo.staff WHERE empName LIKE '%a';
 SELECT * FROM dbo.staff WHERE empName LIKE '%or%';
 SELECT * FROM dbo.staff WHERE empName LIKE '_r%';
 SELECT * FROM dbo.staff WHERE empName LIKE 'j__%';
 SELECT * FROM dbo.staff WHERE empName LIKE 'm%a';
 SELECT * FROM dbo.staff WHERE empName NOT LIKE 'a%';
 select * from dbo.student where city like 'r%';
 select * from dbo.student where city like '%a';
 select * from dbo.student where city like '_avdi';
 select * from dbo.student where city like '_hem__b__';
 select * from dbo.student where city like '[asv]%';
 select * from dbo.student where city like '[a-j]%';
 select * from dbo.student where city like '[!as]%';
 select * from dbo.student where city not like '[asv]%';
 SELECT * FROM dbo.student WHERE city IN ('rajkot', 'surat', 'gondal');
 SELECT * FROM dbo.student WHERE rollno IN (select id from dbo.Numeriuc) ;
 select * from dbo.Numeriuc where salary between 1500 and 25000;
 select * from dbo.Numeriuc where salary not between 15000 and 25000;
 select * from dbo.staff where salary between 15000 and 20000 and subject  not in ('asp' , 'java');
 select * from dbo.student where rollno between 1 and 6 order by enrollment_no asc;
 select * from dbo.staff where empname not between 'p' and 'e' order by empid ;
 select empname as nm from dbo.staff;
 select empname , subject + ',' + salary + ',',+ contact + ','+ empid from dbo.staff;
 select a.salary, c.contact , c.subject from dbo.staff as c , dbo.Numeriuc as a where c.empName='pranav' ;
 select details.Id,staff.empName from dbo.details inner join dbo.staff on dbo.details.Id = dbo.staff.empId;
 select details.Experience,staff.empId from dbo.details inner join dbo.staff on dbo.details.Id = dbo.staff.empId;







 