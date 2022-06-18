1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select e.employee_name, s.monthly_salary 
from ((employees e 
inner join employee_salary es on e.id= es.employee_id)
inner join salary s on s.id = es.salary_id); 

 2. ������� ���� ���������� � ������� �� ������ 2000.
 
 select e.employee_name 
 from ((employees e 
 inner join employee_salary es on e.id = es.employee_id)
 inner join salary s on s.id = es.salary_id)
 where s.monthly_salary < 2000;
 
 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
select s.monthly_salary 
from ((employees e 
right join employee_salary es on e.id= es.employee_id)
right join salary s on s.id = es.salary_id)
where e.employee_name is null ;
 
 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
 select s.monthly_salary
 from ((employees e
 right join employee_salary es on e.id = es.employee_id)
 right join salary s on s.id = es.salary_id)
 where e.employee_name is null and s.monthly_salary < 2000;

 5. ����� ���� ���������� ���� �� ��������� ��.
 
 select  e.employee_name 
 from ((employees e
 left join employee_salary es on e.id = es.employee_id)
 left join salary s on s.id = es.salary_id)
where s.monthly_salary  is null;

 6. ������� ���� ���������� � ���������� �� ���������.
 
 select e.employee_name, r.role_name
 from ((employees e
inner join roles_employee re on re.employee_id = e.id)
inner join roles r on r.id = re.role_id) ;

 7. ������� ����� � ��������� ������ Java �������������.
 
 select e.employee_name, r.role_name
 from ((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id)
 where r.role_name like '%Java%';

8. ������� ����� � ��������� ������ Python �������������.
 
select e.employee_name, r.role_name
from ((employees e
inner join roles_employee re on re.employee_id = e.id)
inner join roles r on r.id = re.role_id)
where r.role_name  like '%Python%';

9. ������� ����� � ��������� ���� QA ���������.
 
 select e.employee_name, r.role_name
 from ((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id  = re.role_id )
where  r.role_name like '%QA engineer%';

 10. ������� ����� � ��������� ������ QA ���������.
 
 select  e.employee_name, r.role_name
 from ((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 where r.role_name like '%Manual QA engineer%';

 11. ������� ����� � ��������� ��������������� QA
 
 select e.employee_name, r.role_name
 from((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id  = re.role_id )
 where r.role_name  like '%Automation QA engineer%';
 
 12. ������� ����� � �������� Junior ������������
 
 select e.employee_name, s.monthly_salary 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id)
 inner join employee_salary es on es.employee_id = e.id)
 inner join salary s on s.id = es.salary_id )
 where r.role_name  like '%Junior%';
 
 13. ������� ����� � �������� Middle ������������
 
 select e.employee_name, s.monthly_salary 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id)
 inner join employee_salary es on es.employee_id = e.id)
 inner join salary s on s.id = es.salary_id )
 where r.role_name  like '%Middle%';

 14. ������� ����� � �������� Senior ������������
 
 select e.employee_name, s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Senior%';
 
 15. ������� �������� Java �������������
 
 select s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Java%';

 16. ������� �������� Python �������������
 
  select s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Python%';

 17. ������� ����� � �������� Junior Python �������������
 
   select s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Junior Python%';

�� �������� 18. ������� ����� � �������� Middle JS �������������
 
 select  e.employee_name, s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Middle JavaScript%';


 19. ������� ����� � �������� Senior Java �������������
 
 select  e.employee_name, s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Senior% %Java%';
 
 20. ������� �������� Junior QA ���������

 select  s.monthly_salary
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Junior% %QA%';



 21. ������� ������� �������� ���� Junior ������������
 
  select avg(s.monthly_salary)
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Junior%';

 22. ������� ����� ������� JS �������������
 
  select  sum(s.monthly_salary) 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%JavaScript%';

 23. ������� ����������� �� QA ���������
 
 select  min(s.monthly_salary) 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%QA%';
 
 24. ������� ������������ �� QA ���������
 
  select  max(s.monthly_salary) 
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%QA%';

 25. ������� ���������� QA ���������
 
  select  count(e.employee_name)  
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%QA%';
 
 26. ������� ���������� Middle ������������.
 
 select  count(e.employee_name)  
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%Middle%';

 27. ������� ���������� �������������
 
 select  count(e.employee_name)  
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%dev%';

 28. ������� ���� (�����) �������� �������������.
 
  select  sum(s.monthly_salary)
 from ((((employees e
 inner join roles_employee re on re.employee_id = e.id)
 inner join roles r on r.id = re.role_id )
 inner join employee_salary es on es.employee_id = e.id )
 inner join salary s on s.id = es.salary_id )
 where r.role_name like '%dev%';
 
 29. ������� �����, ��������� � �� ���� ������������ �� �����������
 
 select e.employee_name, r.role_name , s.monthly_salary 
 from ((((employees e
 inner join roles_employee re on e.id = re.employee_id)
 inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
order by s.monthly_salary ;

 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 
select e.employee_name, r.role_name , s.monthly_salary 
from ((((employees e
inner join roles_employee re on e.id = re.employee_id)
inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary ;

 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 
 select e.employee_name, r.role_name , s.monthly_salary 
from ((((employees e
inner join roles_employee re on e.id = re.employee_id)
inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
where s.monthly_salary < 2300
order by s.monthly_salary ;

 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
 
 select e.employee_name, r.role_name , s.monthly_salary 
from ((((employees e
inner join roles_employee re on e.id = re.employee_id)
inner join roles r on re.role_id  = r.id )
inner join employee_salary es on e.id = es.employee_id)
inner join salary s on es.salary_id = s.id)
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary ;
 



 