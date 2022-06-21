/*1.Create table  employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/

create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

--2.Fill table employee 70 строками

insert into employees (employee_name)
values  ('James'),
		('Robert'),
		('John'),
		('Michael'),
		('David'),
		('Richard'),
		('Joseph'),
		('Thomas'),
		('Charles'),
		('Christopher'),
		('Daniel'),
		('Matthew'),
		('Margaret'),
		('Mark'),
		('Donald'),
		('Steven'),
		('Paul'),
		('Andrew'),
		('Joshua'),
		('Kenneth'),
		('Kevin'),
		('Brian'),
		('George'),
		('Timothy'),
		('Ronald'),
		('Edward'),
		('Jason'),
		('Jeffrey'),
		('Ryan'),
		('Jacob'),
		('Gary'),
		('Nicholas'),
		('Eric'),
		('Jonathan'),
		('Stephen'),
		('Larry'),
		('Justin'),
		('Scott'),
		('Brandon'),
		('Benjamin'),
		('Samuel'),
		('Gregory'),
		('Alexander'),
		('Frank'),
		('Patrick'),
		('Raymond'),
		('Jack'),
		('Dennis'),
		('Jerry'),
		('Tyler'),
		('Aaron'),
		('Jose'),
		('Adam'),
		('Nathan'),
		('Henry'),
		('Douglas'),
		('Zachary'),
		('Peter'),
		('Kyle'),
		('Ethan'),
		('Walter'),
		('Noah'),
		('Jeremy'),
		('Christian'),
		('Keith'),
		('Roger'),
		('Terry'),
		('Gerald'),
		('Sean');


/*Create table salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/

create table salary (
id Serial primary key,
monthly_salary int not null
);

--Fill table salary 15 строками:

insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

/*
Create table employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

/*
Fill table employee_salary 40 строками:
- in 10 strokes of 40 inssert non-existent employee_id
*/

insert  into employee_salary (employee_id, salary_id)
values  ( 34 , 13 ),
		( 32 , 6 ),
		( 21 , 3 ),
		( 13 , 5 ),
		( 22 , 15 ),
		( 40 , 7 ),
		( 17 , 1 ),
		( 9 , 7 ),
		( 30 , 4 ),
		( 6 , 13 ),
		( 35 , 7 ),
		( 5 , 8 ),
		( 24 , 14 ),
		( 7 , 3 ),
		( 39 , 14 ),
		( 14 , 1 ),
		( 23 , 6 ),
		( 31 , 9 ),
		( 25 , 9 ),
		( 38 , 6 ),
		( 16 , 14 ),
		( 3 , 14 ),
		( 36 , 15 ),
		( 15 , 1 ),
		( 2 , 3 ),
		( 12 , 14 ),
		( 1 , 2 ),
		( 37 , 10 ),
		( 28 , 9 ),
		( 10 , 15 ),
		( 41 , 13 ),
		( 42 , 6 ),
		( 43 , 3 ),
		( 44 , 5 ),
		( 45 , 15 ),
		( 46 , 7 ),
		( 47 , 1 ),
		( 48 , 7 ),
		( 49 , 4 ),
		( 50 , 13 );
 	

/*
Create table roles
- id. Serial  primary key,
- role_name. int, not null, unique
*/

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Change column type role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--Ќаполнить таблицу roles 20 строками:

insert into roles (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

/*
Create table roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ дл€ таблицы employees, поле id)
- role_id. Int, not null (внешний ключ дл€ таблицы roles, поле id)
*/
	
create table roles_employee
(id serial primary key,
employee_id int not null unique,
foreign key (role_id) references roles(id);


--Fill table roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values  ( 16 , 17 ),
		( 56 , 16 ),
		( 60 , 1 ),
		( 13 , 16 ),
		( 29 , 5 ),
		( 50 , 14 ),
		( 62 , 18 ),
		( 58 , 8 ),
		( 44 , 11 ),
		( 67 , 3 ),
		( 35 , 19 ),
		( 64 , 15 ),
		( 40 , 2 ),
		( 68 , 6 ),
		( 1 , 20 ),
		( 20 , 7 ),
		( 59 , 8 ),
		( 31 , 12 ),
		( 7 , 18 ),
		( 26 , 7 ),
		( 8 , 5 ),
		( 10 , 10 ),
		( 63 , 7 ),
		( 18 , 1 ),
		( 2 , 16 ),
		( 23 , 19 ),
		( 51 , 12 ),
		( 4 , 20 ),
		( 12 , 9 ),
		( 27 , 3 ),
		( 3 , 4 ),
		( 9 , 14 ),
		( 55 , 10 ),
		( 54 , 14 ),
		( 45 , 16 ),
		( 47 , 17 ),
		( 65 , 11 ),
		( 21 , 18 ),
		( 24 , 3 ),
		( 46 , 19 );
 
