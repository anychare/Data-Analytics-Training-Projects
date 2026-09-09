use my_db


create table Persons (
Person_Id int primary key,
FirstName varchar(20),
LastName varchar(20),
City varchar(20)
)

insert into Persons values 
(6000, 'Peter', 'Eliot', 'Mbombela'),
(6005, 'Emily', 'Ndaba', 'Polokwane'),
(6004, ' Mthokozisi', 'Buthelezi', 'PBM')

select * from Employees union all
	select * from Persons

select P_Id, Surname, Name from Employees union all
	select Person_Id, LastName, FirstName from Persons

select * from Employees
select * from Persons