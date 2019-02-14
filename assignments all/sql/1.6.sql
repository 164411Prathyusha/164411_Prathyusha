
 alter table Department_master add constraint deptname_UQ unique(dept_name)
 SELECT *from Department_master
 SP_HELP 'Department_master'
select *  from sys.indexes where object_id=object_id('Department_master')

---------------------------------
delete  Department_master where Dept_code=60 or Dept_code=90
insert into Department_master values(60,'home science')
insert into Department_master values(70,'home science')
insert into Department_master values(80,NULL)
insert into Department_master values(90,NULL)
-----------------------------------------------------


select *from Book_Transaction
select *  from sys.indexes where object_id=object_id('Book_Transaction')
alter table Book_Transaction add constraint book_code_UQ unique(book_code)  
alter table Book_Transaction alter column stud_code    


-------------------------------------

select *  from sys.indexes 
select *  from sys.indexes where object_id=object_id('Department_master')


----------------------------------------------


create view StaffDetails_view1 as select st.Staff_Code,
 st.Staff_Name, Dept_Name,Design_Name, Salary 
from dbo.Staff_Master st  inner join dbo.Desig_master de
 on st.Des_code=de.Design_code 
 inner  join dbo.Department_master dm on  
 de.Design_Code=dm.Dept_code
 select *from dbo.Staff_Master
 select *from  dbo.Department_master
 select *from dbo.Desig_master
select Staff_Code, Staff_Name, Dept_Name, Design_Name, Salary from StaffDetails_view1
sp_help 'staff_master'
insert into StaffDetails_view1 values(10044,'surya','ece',44000) 
alter index all on staff_master rebuild
-----------------------------------------------


insert into staff_v2 values(100012,'surya',104,30,'1996-07-11 00:00:00:000','2018-12-12 00:00:00:000',100009,20000.00,'bangalore')
select * from staff_master

----------------------------------------------------------------
CREATE NONCLUSTERED INDEX FIBillOfMaterialsWithEndDate
ON Production.BillOfMaterials (ComponentID, StartDate)
WHERE EndDate IS NOT NULL
---------------------------------------------------------------
sp_helptext staff_v2

----------------------------------------------------------
create view staff_v2 as
select* from Staff_Master where DATENAME(month,hiredate)='June'
-----------------------------------------------------------
CREATE UNIQUE INDEX idx_employees
 ON Employees(Employee_id)
select * from employees
sp_help employees