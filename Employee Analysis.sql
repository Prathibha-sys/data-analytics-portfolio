use employee_records;
select * from employee_analysis;
select Employee_Name,Department,Salary from employee_analysis;

describe employee_analysis;
alter table employee_analysis add primary key(Employee_ID);

select * from employee_analysis where Department="HR";
select * from employee_analysis where Salary>100000;
select * from employee_analysis where Country in ("India","UK");
select * from employee_analysis where age>35 and Department="Engineering";

select * from employee_analysis where Employee_Name like 'S%';

# Aggregate Functions
select max(Salary) as `Highest Salary`, min(Salary) as `Lowest Salary` from employee_analysis;

select distinct Department from employee_analysis;
select distinct Country from employee_analysis;

select Employee_Name,Department,Salary from employee_analysis order by Salary desc limit 5;

select * from employee_analysis order by Salary asc;
select * from employee_analysis order by Salary desc;
select Department,Salary from employee_analysis order by Department asc, Salary desc;

# Total salary by Department
select Department,sum(Salary) as `Total Salary` from employee_analysis group by Department;

# Average salary by country
select Country, avg(Salary) as `Average Salary` from employee_analysis group by Country;

# count employees per department
select Department,count(*) as `Employee Count` from employee_analysis group by Department;

# having clause
select Department,avg(Salary) as `Average Salary` from employee_analysis group by Department having avg(Salary)>90000;

# Creating a new table Department
create table department(dept_id int primary key,dept_name varchar(50),manager_name varchar(50));
insert into department values
(1,"HR","William Smith"),
(2,"Marketing","John Samuel"),
(3,"Finance","Patrik John"),
(4,"Support","Harrison Byers"),
(5,"Sales","Krish Sudev"),
(6,"Engineering","Anna Lee");

# INNER JOIN
select e.Employee_Name,e.Department,d.manager_name
from employee_analysis e inner join department d on 
e.Department=d.dept_name;

# LEFT JOIN
select *
from employee_analysis e right join department d on 
e.Department=d.dept_name;






