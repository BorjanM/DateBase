use SEDC_ACADEMY_HOMEWORK

--Calculate the count of all grades per Teacher in the system

select * from dbo.Grade


select t.ID as TeacherId, count(Grade) as CountGR 
from dbo.Teacher as t
full join dbo.Grade as g ON t.ID = g.TeacherID 
group by t.ID, g.Grade



select t.ID as TeacherId, count(Grade) as CountGR
from dbo.Teacher as t
full join dbo.Grade as g ON t.ID = g.TeacherID 
full join dbo.Student as s ON s.ID = g.StudentID
where g.StudentID < 100
group by t.ID, t.FirstName



select g.StudentID, MAX(g.Grade) as MG , AVG(g.Grade) as AG
from dbo.Grade as g
group by g.StudentID



select t.ID as TeacherId, count(g.Grade) as CountGR 
from dbo.Teacher as t
full join dbo.Grade as g ON t.ID = g.TeacherID 
full join dbo.Student as s ON s.ID = g.StudentID
group by t.ID, t.FirstName, g.Grade
having count(g.Grade) > 200
order by TeacherId asc
--valjda nema zatoa ne iskaca niso :D




select g.StudentID , AVG(Grade) as AG, MAX(Grade) as MG, COUNT(Grade) as CG
from dbo.Grade as g
group by g.StudentID 

--List Student First Name and Last Name next to the other details from previous query
--ne mi tekvit bash :D



create view vv_StudentGrades
as
select g.StudentID, COUNT(g.Grade) as CG
from dbo.Grade as g
group by g.StudentID


alter view vv_StudentGrades
as
select g.StudentID, s.FirstName, s.LastName ,COUNT(g.Grade) as CG
from dbo.Grade as g
full join dbo.Student as s ON s.ID = g.StudentID
group by g.StudentID, s.FirstName, s.LastName


