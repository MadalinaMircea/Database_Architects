create table Architects(
	ArcID int primary key,
	Name varchar(30),
	Surname varchar(30),
	Birthday date,
	Buildings int
)

create table Cities(
	CityID int primary key,
	Name varchar(50),
	Existance int,
	Population int
)

create table Buildings(
	BuildingID int primary key,
	Name varchar(50),
	Weight float,
	Height float,
	Duration int,
	CityID int foreign key references Cities(CityID) ON DELETE CASCADE,
	ArcID int foreign key references Architects(ArcID) ON DELETE CASCADE
)

create table Employees(
	EmpID int primary key,
	Name varchar(50),
	Experience int,
	Hours int
)

create table Employment(
	EmpID int foreign key references Employees(EmpID) ON DELETE CASCADE,
	BuildingID int foreign key references Buildings(BuildingID) ON DELETE CASCADE,
	Finalization date,
	Monthly float,
	constraint pk_emp primary key(EmpID, BuildingID)
)

drop table Architects
drop table Cities
drop table Buildings
drop table Employees
drop table Employment