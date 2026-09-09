/*Stored Procedure Syntax*/
/* 
create procedure <ProcedureName>
	as
		begin
		<SQL statements>
		end   
*/

/*Stored Procedure Example 1*/
create procedure SelectEmployeesData
as 
	begin
	select * from Employees1
	end

/*To use/call the procedure*/
exec SelectEmployeesData

/*Procedure to Display the total salary paid to IT personnel*/
create procedure ITSalaries
as
	begin
		select Department, sum(Salary) TotalSalary
	from Employees1
		where Department='IT'
			group by Department
				order by Department
	end

exec ITSalaries

/*Procedure to display data about employees from a particular department*/
create procedure EmployeesData @Dept varchar(50)
as
	begin
		select * from Employees1 where Department = @Dept
	end

exec EmployeesData @Dept = 'Finance'