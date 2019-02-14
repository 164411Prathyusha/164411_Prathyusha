use Training_12Dec18_Bangalore

select * from dbo.Student_master

select Stud_Code,Stud_Code,Dept_Code from dbo.Student_master

---------------------------------------------------------

select * from dbo.Staff_Master

select Staff_Code,Staff_Name,Dept_Code from dbo.Staff_Master

---------------------------------------------------------

select Staff_Code,Staff_Name,Dept_Code from dbo.Staff_Master 
where Dept_Code in (20,30,40)

-----------------------------------------------------------

select * from dbo.Student_Marks

select Stud_Code,Subject1,Subject2,Subject3, 
(Subject1+Subject2+Subject3) as total_marks from dbo.Student_Marks order by total_marks desc

-----------------------------------------------------------


select * from dbo.Book_Master

select Book_code,Book_name,price from dbo.Book_Master where Book_name like 'An%'

-----------------------------------------------------------

select * from dbo.Student_master

select Dept_Code,Stud_Name from dbo.Student_master where year=year(getdate())

------------------------------------------------------------

select * from dbo.Student_master

select Stud_Name, datename(month,Stud_Dob)+' '+datename(d,Stud_Dob)+' '+datename(yyyy,Stud_Dob) 
as Stud_Dob,datename(weekday,Stud_Dob) as day from dbo.Student_master where datename(weekday,Stud_Dob) ='Saturday'OR datename(weekday,Stud_Dob)='Sunday'

-------------------------------------------------------------


select * from Staff_Master

select Staff_Code, Staff_Name, Dept_Code, Hiredate as Date_of_joining,
datediff(year,Hiredate,getdate()) as no_of_years_experience_company 
from Staff_Master

--------------------------------------------------------------
select * from dbo.Staff_Master

select Staff_Code, Staff_Name,Hiredate from Staff_Master
where  hiredate < datefromparts(2000,01,1)


--------------------------------------------------------------
-----error

select * from dbo.Student_master

select Stud_Name,Dept_Code,Stud_Dob from Student_master
 where stud_dob between '1981-1-01' and '1983-3-31'


--------------------------------------------------------------

select * from dbo.Student_Marks

select Stud_Code from dbo.Student_Marks 
where Subject2 IS NUll

--------------------------------------------------------------




















