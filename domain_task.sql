create domain Employee_IdDomain as int
check (value > 0)

 create table Employees
 (
Emp_id Employee_IdDomain primary key,
name varchar (10) not null,
department varchar(20)
 )

insert into Employees (Emp_id,name,department)
values(1,'roy', 'IT department');
values(2,'raj', 'Account department');
select * from Employees

update Employees
set department = 'Managment Support'
where Emp_id = 2
select * from Employees

create view EmpolyeeDetails as
select Emp_id,name,department
from Employees
select * from EmpolyeeDetails

delete from Employees
where department = 'Managment Support'
select * from Employees



 
 