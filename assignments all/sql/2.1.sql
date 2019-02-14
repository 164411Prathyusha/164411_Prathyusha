use Training_12Dec18_Bangalore

select * from dbo.Staff_Master

select Staff_Code,Staff_name,datediff(yyyy,hiredate,getdate()) 
as experince from dbo.Staff_Master where datediff(y,hiredate,getdate()) > 18


---------------------------------------

create function Rep_Salary(@salary numeric(10,2))
returns varchar(max)
as
begin
	declare @num int=@salary/1000;
	declare @result varchar(max) = ' '
	while(@num >= 1)
	begin
		set @result= @result + 'X'
		set @num= @num-1
	end
	return @result
end

select Staff_Name,dbo.Rep_Salary(Salary) from Staff_Master

select * from dbo.Staff_Master

---2.1.3----

select book_code from Book_transaction where Actual_Return_Date>=Exp_Return_date

---2.1.4--

select * from staff_master
select staff_name from staff_master where datename(month,staff_dob)=datename(month,getdate())

---2.1.5--

select * from Book_Master

select count(Book_code) as student_books from book_transaction where Actual_Return_date is not null

--2.1.6--

select book_name,count(book_code)as total_books from book_master where book_name='physics or chemistry'
group by book_name

--2.1.7-

select count(*) from Book_Transaction where exp_return_date=getdate()

--2.1.8--

select staff_name,round(min(salary),2)as Minimum,round(max(salary),6) as Maximum,round(sum(salary),3) as Total,round(avg(salary),3) as Average from staff_master
group by staff_name


-----2.1.9

select distinct s.staff_name from staff_master s,staff_master m
where ( m.Mgr_code=s.staff_code) 

-------
select stud_year,count(stud_code) from student_marks
where (subject1>60 or subject2>60 or subject3>60)
group by stud_year

-----------
select dept_code,count(*) from department_master
group by Dept_Code
having count(dept_code)>10

select count(dept_code) from staff_master
where dept_code in (select dept_code from department_master
group by dept_code
having count(dept_code)>10) 


----------
select sum(price) as total_book_inventary from book_master

---
select count(book_category) as book_category,Price  from book_master
where price>1000
group by price

--------
select count(dept_code) as total from staff_master
where dept_code in (select dept_code from department_master where dept_name= 'home science')





 