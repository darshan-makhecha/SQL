CREATE TABLE Customers (
    Id bigint IDENTITY(1,1) PRIMARY KEY Not null, --identity means auto-increment
    FirstName nvarchar(70),
	LastName nvarchar(100) NOT NULL,
	Name nvarchar(200) not null,
	Mobile nvarchar(10) not null,
	Email nvarchar(100),
	Address1 nvarchar(255) not null,
	Address2 nvarchar(255) not null,
	Address3 nvarchar(255) not null,
	CityId nvarchar(10) not null,
	StateId nvarchar(10) not null
);

CREATE TABLE Cities (
    Id bigint IDENTITY(1,1) PRIMARY KEY Not null,
	Name nvarchar(200) not null,
	StateId nvarchar(10) not null
);

CREATE TABLE States (
    Id bigint IDENTITY(1,1) PRIMARY KEY Not null,
	Name nvarchar(200) not null,
	Country char(2) not null
);