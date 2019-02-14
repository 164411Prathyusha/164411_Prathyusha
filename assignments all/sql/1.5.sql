use Training_12Dec18_Bangalore

select * from dbo.Department_master;

select sm.staff_name,sm.Dept_Code,dm.dept_name,salary
from dbo.Staff_Master sm inner join dbo.Department_master dm
on sm.Dept_Code = dm.Dept_code
where salary > 20000;

-------------------------------------



select * from dbo.Department_master;

select sm.staff_name,sm.Dept_Code,dm.dept_name,salary
from dbo.Staff_Master sm inner join dbo.Department_master dm
on sm.Dept_Code = dm.Dept_code
where sm.Dept_code NOT IN (10);


--------------------------------------

select * from book_master;

select book_name,count(*) no_of_times_issued
from book_master
where book_name IN ('let us c','linux internals') group by Book_name


-----------------------------------------


select * from Staff_Master

select a.staff_code, a.staff_name, b.mgr_code
from Staff_Master a, Staff_Master b
where a.Mgr_code=b.Mgr_code order by Staff_Code


-------------------------------------------


select * from dbo.Staff_Master

select datename(weekday,hiredate) as day,Staff_name,hiredate
from dbo.staff_master order by datepart(weekday,hiredate)


-------------------------------------------
----incomplete
select * from dbo.Staff_Master
select * from dbo.Book_Transaction
select * from dbo.department_Master

select sm.Staff_Code,sm.Staff_Name,dm.Dept_Name 
from dbo.Staff_Master sm inner join dbo.department_Master dm 
on sm.dept_code = dm.dept_code  inner join dbo.book_transaction bt
on sm.staff_code = bt.staff_code

-------------------------------------------------

select * from dbo.Student_Marks

select Stud_Code,Subject1 from Student_Marks 
where subject1 = (select max(Subject1) from Student_marks)

-----------------------------------------

select * from dbo.Student_Master

select sm.Stud_Code,Stud_name,sm.Subject1 from Student_Marks sm inner join Student_Master ms
on sm.Stud_Code = ms.Stud_code  
where subject1 = (select max(Subject1) from Student_marks)

------------------------------------------


select * from dbo.Book_master

select * from dbo.Book_Transaction

select Book_name, Author, Book_code, book_category
from Book_Master  where not exists
(select * from Book_Transaction  where 
Book_Master.Book_code=Book_Transaction.Book_code) 

-------------------------------------------------

select * from Staff_Master

select * from Student_master

select sm.Staff_code,sm.Staff_name,ms.Stud_code,ms.Stud_Name,ms.Dept_Code 
from dbo.Staff_Master sm inner join dbo.Student_Master ms 
on sm.Dept_Code = ms.Dept_Code where ms.Dept_Code = 20 

----------------------------------------------------

select * from dbo.Student_Marks

select * from dbo.Student_Master


select ms.Stud_Code,ms.Stud_name,year from dbo.Student_Marks sm inner join dbo.Student_Master ms
on sm.Stud_Code = ms.Stud_Code where year <> 2018 


-------------------------------------------------------

select * from Book_Master

select * from Student_Master

select bt.Stud_Code,sm.Stud_Name from Student_Master sm right join Book_Transaction bt
on sm.Stud_Code = bt.Stud_code

------------------------------------------------------

select * from Surya_168253.Customer44

insert into surya_168253.customer44 values ('ALFKI','AlfredsFutterKiste','Obere Str.57','Berlin Germany',030-007432,12209,NULL,NULL)

insert into Surya_168253.Customer44 values ('ANATR','Ana Trujillo Emparedados y helados','Avda. de la Constitucition 2222','Mexico D.F.Mexico',555-4729,5021,null,null)

insert into Surya_168253.Customer44 values ('ANTON','Antonio Moreno Taqueria','Mtaderos 2312','Mexico D.F.Mexico',555-3932,5023,null,null)

insert into Surya_168253.Customer44 values ('AROUT','Around the Horn','120 Hanover Sq.','Londin, UK',555-7788,'WA11DP',null,null)

insert into Surya_168253.Customer44 values ('BERGS','Berglundssnabbkop','Berguvsvagen 8','Lulea,Swden',1921-123465,'S-95822',null,null)

insert into Surya_168253.Customer44 values ('BLAUS','Blauer See Delikatessen','Berguvsvagen 8','Lulea Sweden','0921-123465','S-95822',null,null)

insert into Surya_168253.Customer44 values ('BLONP','Blondesddsplpereer fils','24,place Kleber','Strasbourg, France','88.60.1.5.31',67000,null,null)

insert into Surya_168253.Customer44 values ('BOLID','BolidoComidaspre Paradas','C/Araquil,67','Madrid,Spain',5552282,28023,'EU',null)

insert into Surya_168253.Customer44 values ('BONAP','Bon app','12, rue des Bouchers','Marseille,France',91244240,13008,null,null)

insert into Surya_168253.Customer44 values ('BOTTM','Bottom Dollar','23 tsawsee,blvd','tsawseene Cannada',5554729,'T248M4','BC',null)

select * from Surya_168253.Customer44 


--------------------------------------------------

update Surya_168253.Customer44 set 

contact_number =  replace(contact_number,4174,3332345) where customerid = 'ANATR'

----------------------------------------------------

update Surya_168253.Customer44 set

address1  = replace(address1,'23 tsawsee,blvd','19/2 12th block, Spring Fields') where customerid = 'BOTTM'  

update Surya_168253.Customer44 set

address2 = replace(address2,'tsawseene Cannada','Ireland-UK') where customerid = 'BOTTM'  

update Surya_168253.Customer44 set

Region = replace (Region,'BC','EU') where customerid = 'BOTTM'  

select * from Surya_168253.Customer44 



-----------------------------------------------------

select * from surya_168253.customertable


insert into surya_168253.customertable values
('AROUT',04-07-96,'P')
insert into surya_168253.customertable values
('ALFIKI',05-07-96,'C')
insert into surya_168253.customertable values
('BLONP',08-07-96,'P')
insert into surya_168253.customertable values
('ANTON',08-07-96,'P')
insert into surya_168253.customertable values
('ANTON',09-07-96,'P')
insert into surya_168253.customertable values
('BOTTM',10-07-96,'C')
insert into surya_168253.customertable values
('BONAP',11-07-96,'P')
insert into surya_168253.customertable values
('ANATR',12-07-96,'P')
insert into surya_168253.customertable values
('BLAUS',15-07-96,'C')
insert into surya_168253.customertable values
('HILAA',16-07-96,'P')


select * from surya_168253.customertable


-----------------------------------------------------


delete surya_168253.customertable where Order_State = 'C'


------------------------------------------------------

truncate table surya_168253.customertable

select * from surya_168253.customertable
 

 --------------------------------------------------------



 update surya_168253.customertable set 
order_state=replace(order_state,'P','C')
where order_state='P'

select * from surya_168253.customertable















