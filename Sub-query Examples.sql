select * from INFORMATION_SCHEMA.tables

select * from Employees1

/*Sub-query Example 1: Using the Select Statement*/
select * from Employees1 
	where EmployeeID in 
					(select EmployeeID from Employees1 where Salary=55000)\

/*Creating a new table in the EmployeesDB1 database*/
create table Workers (
Worker_ID int primary key,
Worker_Name varchar(20),
Worker_Surname varchar(30),
Worker_Ept varchar(30),
Worker_Sal decimal
)

/*Sub-query Example 2: Using the insert statement*/
insert into Workers
	select * from Employees1
		where EmployeeID in
				(select EmployeeID from Employees1)

truncate table Workers
select * from Workers
select * from Employees1 

/*Sub-query using the UPDATE statement*/
update Workers set Worker_Sal = Worker_Sal * 1.20
	where Worker_Ept in
		(select Worker_Ept from Workers where Worker_Ept = 'IT')

/*Sub-query using the DELETE statement*/
delete from Workers 
	where Worker_ID in
		(select EmployeeID from Employees1 where EmployeeID=7)

delete from Workers 
	where Worker_ID in
		(select Worker_ID from Workers where Worker_ID=10)