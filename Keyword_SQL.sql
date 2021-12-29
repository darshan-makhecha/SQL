SELECT * FROM dbo.student WHERE surname='xyz' AND city='rajkot';
select name from dbo.student where rollno = all(select rollno from dbo.student where postalcode=360002);
select * from dbo.student order by name asc;
BACKUP DATABASE clg to disk='d:\clg';
ALTER TABLE dbo.staff ALTER COLUMN empId bigint;
ALTER TABLE dbo.student ADD CONSTRAINT Person PRIMARY KEY (rollno,surname); --person is contraint name
create database abc;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
CREATE VIEW [rajkot name] AS SELECT rollno, name FROM dbo.student WHERE city = 'rajkot';  
CREATE TABLE address (City varchar(255) DEFAULT 'rajkot');
delete from dbo.student where name='aayush';
alter table dbo.student drop column enrollment_no;

SELECT COUNT(empId), empName FROM dbo.staff group by empName HAVING COUNT(empId) < 500;
INSERT INTO dbo.student(rollno, name, city)
SELECT empId, empName, subject FROM dbo.staff;
SELECT * INTO dbo.student12 FROM dbo.student;
