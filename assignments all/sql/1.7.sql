--1.7.1

select * from dbo.Staff_Master

sp_help 'dbo.staff_master'

alter table staff_master_back(Staff_Code numeric(8, 0), Staff_Name varchar(30), Des_Code numeric(3, 0), Dept_Code numeric(2, 0), Staff_dob datetime, Hiredate datetime, Mgr_code numeric(8, 0), Salary numeric(10, 2), Address varchar(20))


insert into staff_master_back select * from dbo.staff_master

select * from Staff_master_back


alter procedure upd_salary  @exp int, @Staff_code int, @salary int
as
begin
	if (@exp>=2 and @exp<=5)
		begin
			update dbo.staff_master set salary=@salary+@salary/5 where staff_code=@Staff_code;
		end
	else if (@exp>5)
		begin
			update dbo.staff_master set salary=@salary+@salary/4 where staff_code=@Staff_code;
		end
	else
	begin
	print 'experience is less than 2 so salary is not have been updated'
	end
end;

exec upd_salary experience=@exp, Staff_code=@Staff_code, salary=@salary;

begin
	select * from staff0 where id=@Staff_code;
end;
exec upd_salary 100001,10,5000000
select * from Staff_Master

----------------------------------------------------
use Training_12Dec18_Bangalore
select * from Book_Transaction;

create Procedure surya_168253.Userdefindpro_booktran @bookCod varchar(10),@scod varchar(10)
as
declare
@variableone varchar(10), @variabletwo varchar(10),@variablethree varchar(10),@datevar varchar(10)
begin
if @bookCod is null and @scod is null
	begin
		throw 50008,'enterred book and code invalid',12
	end
else
   select @variableone=book_name from Book_Master where Book_code=@bookcod;
   select @variabletwo=stud_code from Student_master where Stud_Code=@scod;
   select @variablethree=staff_code from Staff_Master where Staff_Code=@scod;
   if (@variableone is not null and (@variabletwo is not null or @variablethree is not null))
   begin
        select @datevar=datename(weekday,DATEADD(DAY,10,getdate())) 
		
		if @datevar= ('Sunday')
		 begin
			insert into Book_Transaction (book_code,Stud_code,Staff_code,Issue_date)
			values(@bookCod,@variabletwo,@variablethree,GETDATE(),DATEADD(DAY,11,getdate()));
		 end
		if @datevar='Saturday'
		 begin
		 		insert into Book_Transaction (book_code,Stud_code,Staff_code,Issue_date)
				values(@bookCod,@variabletwo,@variablethree,GETDATE(),DATEADD(DAY,12,getdate()));
		 end
		if @datevar not in ('Saturday','Sunday')
		 begin
		 		insert into Book_Transaction (book_code,Stud_code,Staff_code,Issue_date)
				values(@bookCod,@variabletwo,@variablethree,GETDATE(),DATEADD(DAY,10,getdate()));
		  end

	end
end;

select * from Book_Master;
select * from Student_Marks;
begin try
exec surya_168253.Userdefindpro_booktran '10000003','1002'
end try
begin catch 
 print error_message()
end catch


