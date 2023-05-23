use SEDC_ACADEMY_HOMEWORK

select * from dbo.Student
where (FirstName = 'Antonio')


select * from dbo.Student
where (DateOfBirth > '1999-01-01')


select * from dbo.Student
where (LastName like 'J%') and (EnrolledDate like '1998-01%')


select * from dbo.Student
order by FirstName desc



select LastName 
from dbo.Student
union
select LastName 
from dbo.Teacher


select * 
from dbo.Course 
cross join dbo.AchievementType 


select * 
from dbo.Teacher as a
inner join dbo.Grade as b ON a.ID=b.TeacherID
where (Grade = 9)

select * from dbo.Grade