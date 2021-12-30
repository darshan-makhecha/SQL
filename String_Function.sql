SELECT empName ,ASCII(empName)  FROM dbo.staff; --ASCII of first char nameSELECT CONCAT
SELECT CHAR(65); -- return character based on ASCII number
SELECT CHARINDEX('d', 'dbo.staff') AS MatchPosition; --searches for a substring in a string, and returns the position.
SELECT CONCAT('DARSHAN', ' MAKHECHA'); -- concateing 
SELECT 'DARSHAN' + ' MAKHECHA';			-- ""
SELECT CONCAT_WS('.', 'www', 'darshan', 'com');
SELECT DATALENGTH('Darshan Makhecha'); -- check the length
SELECT DIFFERENCE('Juice', 'Jucy');

DECLARE @d DATETIME = '12/29/2021';
SELECT FORMAT (@d, 'd', 'en-US') AS 'US English Result',
               FORMAT (@d, 'd', 'no') AS 'Norwegian Result',
               FORMAT (@d, 'd', 'zu') AS 'Zulu Result'; --date formate fdifferent type 

SELECT LEFT('Study SQL', 5) AS ExtractString; --extracts a number of characters from a string(starting from left).
select len('darshan'); -- length count 
SELECT LOWER('SQL is FUN!'); -- lowercase convert
SELECT LTRIM('     SQL Tutorial') AS LeftTrimmedString; -- left side space trim
SELECT NCHAR(65) AS NumberCodeToUnicode; -- ascii num convert char
select PATINDEX('%h%','darshan Makhecha'); --returns the position of a pattern in a string
SELECT QUOTENAME('abcdef', '()'); -- default []
SELECT REPLACE('darshan' ,'d','a'); --replace char
SELECT REPLICATE('darshan makhecha' , 3);  --repeat word 
SELECT REVERSE('darshan');
SELECT RIGHT('darshan',5);
SELECT RTRIM('SQL study     ');
SELECT SOUNDEX('Juice'), SOUNDEX('Jucy'); -- returns a four-character code to evaluate the similarity of two expressions
SELECT STR(185); --Return a number as a string
SELECT STUFF('SQL study', 1, 3, 'asp.net');
SELECT SUBSTRING('SQL study', 5, 6)
SELECT TRANSLATE('3*[2+1]/{8-4}', '[]{}', '()()'); 
SELECT UPPER('SQL study is FUN!');
SELECT UNICODE('Atlanta');
SELECT TRIM('	SQL Tutorial!	');








