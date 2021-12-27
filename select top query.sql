/*SELECT TOP 5 * FROM dbo.staff; -- top meanse first  it display first 5 record 
SELECT TOP 50 PERCENT * FROM dbo.staff; -- disaplay 50% data from table
SELECT TOP 3 * FROM dbo.student WHERE city = 'rajkot'; 
SELECT MIN(salary) AS SmallestPrice FROM dbo.staff; --it display minimum salary 
SELECT Max(salary) AS LargestPrice FROM dbo.staff; --it display maximum salary 
SELECT count(id) FROM dbo.Numeriuc;   -- count which id
SELECT SUM(salary) FROM dbo.Numeriuc;  -- sum of all salary
SELECT avg(salary) FROM dbo.Numeriuc;  -- average of salary */
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
