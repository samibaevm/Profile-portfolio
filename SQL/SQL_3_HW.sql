1. Display all employees whose salaries are in the database, along with their salaries.

select e.employee_name, s.monthly_salary 
from ((employees e 
inner join employee_salary es on e.id= es.employee_id)
inner join salary s on s.id = es.salary_id); 

 2. Display all workers whose salary is less than 2000

 select e.employee_name 
 from ((employees e 
 inner join employee_salary es on e.id = es.employee_id)
 inner join salary s on s.id = es.salary_id)
 where s.monthly_salary < 2000;
 
 3. Display all salary items, but no employee is assigned to them. (There is a RFP, but it is not clear who receives it.)
 
select s.monthly_salary 
from ((employees e 
right join employee_salary es on e.id= es.employee_id)
right join salary s on s.id = es.salary_id)
where e.employee_name is null ;
 
 4. Display all salary positions less than 2000 but no employee has been assigned to them. (There is a RFP, but it is not clear who receives it.)
 
 select s.monthly_salary
 from ((employees e
 right join employee_salary es on e.id = es.employee_id)
 right join salary s on s.id = es.salary_id)
 where e.employee_name is null and s.monthly_salary < 2000;

 5. Find all employees who have not received a salary.
 
 select  e.employee_name 
 from ((employees e
 left join employee_salary es on e.id = es.employee_id)
 left join salary s on s.id = es.salary_id)
where s.monthly_salary  is null;

 6. Display all employees with their job titles.
 
 select e.employee_name, r.role_name
 from ((employees e
inner join roles_employee re on re.employee_id = e.id)
inner join roles r on r.id = re.role_id) ;

 7. Display the names and titles of Java developers only.
 
 select e.employee_name, r.role_name
 from ((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id)
 where r.role_name like '%Java%';

8. Display the names and titles of only Python developers.
 
select e.employee_name, r.role_name
from ((employees e
inner join roles_employee re on re.employee_id = e.id)
inner join roles r on r.id = re.role_id)
where r.role_name  like '%Python%';

9. Display the names and titles of all QA engineers.
 
 select e.employee_name, r.role_name
 from ((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id  = re.role_id )
where  r.role_name like '%QA engineer%';

 10. Display the names and titles of manual QA engineers.
 
 select  e.employee_name, r.role_name
 from ((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 where r.role_name like '%Manual QA engineer%';

 11. Display names and position of QA automators
 
 select e.employee_name, r.role_name
 from((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id  = re.role_id )
 where r.role_name  like '%Automation QA engineer%';
 
 12. Display the names and salaries of junior specialists
 
 select e.employee_name, s.monthly_salary 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id)
 inner join employee_salary es on es.employee_id = e.id)
 inner join salary s on s.id = es.salary_id )
 where r.role_name  like '%Junior%';
 
 13. Display names and salaries of Middle specialists
 
 select e.employee_name, s.monthly_salary 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id)
 inner join employee_salary es on es.employee_id = e.id)
 inner join salary s on s.id = es.salary_id )
 where r.role_name  like '%Middle%';

 14. Display names and salaries of senior specialists
 
 select e.employee_name, s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Senior%';
 
 15. Display salaries of Java developers
 
 select s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Java%';

 16. Display salaries of Python developers

 select s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Python%';

 17. Display the names and salaries of junior Python developers
 
   select s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Junior Python%';

18. Display names and salaries of Middle JS developers
 
 select  e.employee_name, s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Middle JavaScript%';


19. Display the names and salaries of Senior Java Developers
 
 select  e.employee_name, s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Senior% %Java%';
 
20. Display Salaries of Junior QA Engineers

 select  s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Junior% %QA%';



 21. Display the average salary of all junior specialists
 
  select avg(s.monthly_salary)
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Junior%';

 22. Display the amount of salaries of JS developers
 
  select  sum(s.monthly_salary) 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%JavaScript%';

23. Display the minimum salary of QA engineers
 
 select  min(s.monthly_salary) 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%QA%';
 
 24. Display the maximum salary of QA engineers
 
  select  max(s.monthly_salary) 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%QA%';

25. Display the number of QA engineers
 
  select  count(e.employee_name)  
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%QA%';
 
26. Display the number of Middle specialists.
 
 select  count(e.employee_name)  
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Middle%';

27. Display the number of developers
 
 select  count(e.employee_name)  
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%dev%';

 28. Withdraw the fund (amount) of the developers salaries.
 
  select  sum(s.monthly_salary)
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%dev%';
 
 29. Display the names, positions and salaries of all specialists in ascending order
 
 select e.employee_name, r.role_name , s.monthly_salary 
 from ((((employees e
 inner join roles_employee re on e.id = re.employee_id)
 inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
order by s.monthly_salary ;

 30. Display the names, positions and salary of all specialists in ascending order from specialists whose salary is from 1700 to 2300
 
select e.employee_name, r.role_name , s.monthly_salary 
from ((((employees e
inner join roles_employee re on e.id = re.employee_id)
inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary ;

 31. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is less than 2300
 
 select e.employee_name, r.role_name , s.monthly_salary 
from ((((employees e
inner join roles_employee re on e.id = re.employee_id)
inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
where s.monthly_salary < 2300
order by s.monthly_salary ;

 32. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is equal to 1100, 1500, 2000
 
 select e.employee_name, r.role_name , s.monthly_salary 
from ((((employees e
inner join roles_employee re on e.id = re.employee_id)
inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary ;
 



 