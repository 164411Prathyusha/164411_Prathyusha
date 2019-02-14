
--1.2
--1) user and system defined databases in system
select * from sys.databases;

--2)to set the activate
use Training_12Dec18_Bangalore

--3)checking if active database is master or not
select db_name();

--4)making traning database as active dsatabase

--5) finding the content of the db
sp_help

--6)above for master and northwind database
use Northwind; --active db
select * from sys.databases; --user and system defined databases in system
select db_name();-- check the active db

--7)find the version of sqlserver
select @@version
--8)find server date
select getdate();
--9) in northwind find info about the tables using the commands 
sp_help '[surya_168253].[student11]' 

