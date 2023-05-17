CREATE DATABASE SEDCACADEMYDB
--HomeWork 16.05.2023 (Cas broj 1)

create table Students (
Id int not null,
FirstName nvarchar(100) not null,                   
LastName  nvarchar (100)     null, 
DateOfBirth  time  null,
EnrollerdDate time null,                             
Gender nvarchar (1) null,
NationalIdNumber nvarchar(15) not null,
StudentCardId   nvarchar(15) null
constraint pk_Students primary key clustered (Id)
)

create table Teacher (
Id int not null,
FirstName nvarchar(100) not null,                 
LastName  nvarchar (100)     null, 
DateOfBirth  time  null,
AccademicRank nvarchar(100) null,       
HireDate date  null,
constraint pk_Teacher primary key clustered (Id)
)

create table Grade(
Id int not null,
StudentsID int not null,
CourseID int not null,
TeacherId int not null,
Grade int not null,
Comment nvarchar(50) null,
CreateDate date null,
constraint pk_Grade primary key clustered (Id)
)


create table Course(
id int not null,
Name nvarchar(100) not null,
Credit nvarchar(100) not null,
AccademicYear int not null,
Semester int not null,
constraint pk_Course primary key clustered (Id)
)

create table GradeDetails(
id int not null,
GradeID nvarchar(100) not null,
AchivmentTypeId nvarchar(100) not null,
AchivmentPoints int not null,
AchivmentMaxPoint int not null,
AchivmentMaxDate int not null,
constraint pk_GradeDetails primary key clustered (Id)
)


create table AchivmentType(
id int not null,
Name nvarchar(100) not null,
Description nvarchar(100) not null,
PartcipationRate int not null,
constraint pk_AchivmentType primary key clustered (Id)
)