use Training_12Dec18_Bangalore

Create schema surya_168253

create table surya_168253.student11
(
 stu_id int not null primary key,
 name varchar(25) not null,
 age int
);

select * from surya_168253.student11

sp_help 'surya_168253.student11'

-------------------------------------------------
drop table surya_168253.customer44


create table surya_168253.customer44
(
 customerid varchar(50) unique not null,
 customername varchar(500) not null,
 address1 varchar(100),
 address2 varchar(100),

 contact_number varchar(50) not null,
 Postal_Code varchar(50) not null,
  Region varchar(15),
  Gender varchar(15),
 );

select * from surya_168253.customer44

sp_help 'surya_168253.customer44'

--------------------------------------------------------

create table surya_168253.contractors
(

contractid int not null primary key,
name nvarchar(255) null
);

select * from surya_168253.contractors

sp_help 'surya_168253.contractors'

-------------------------------------------------------

create table surya_168253.testrethrow
(
 id int primary key
);

select * from surya_168253.testrethrow

sp_help 'surya_168253.testrethrow'


----------------------------------------------------------


create type Region55 from char(15)

create default def_region55  as  'NA'

sp_bindefault def_region ,  'region'

alter table surya_168253.customer44 add customer_region Region55 not null

alter table surya_168253.customer44 add gender char(1)


select * from surya_168253.customer44

sp_help 'surya_168253.customer44'

alter table surya_168253.customer44 
add constraint ck_gender check (gender in ('M','F','T'))

  
drop table surya_168253.customertable

create table surya_168253.customertable
(
 OrderId int not null identity(1000,1),
 CustomerId varchar(30) not null,
 OrdersDate Datetime,
 Order_State char(50)
);

alter table surya_168253.customertable 
add constraint ck_Order_State check (Order_State in ('P','C')) 

select * from surya_168253.customertable 

sp_help 'surya_168253.customertable'

create SEQUENCE Id_sequence as int
start with 10000
increment by 1 
