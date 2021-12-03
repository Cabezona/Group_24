--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary from 
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary from 
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from
employee_salary join salary on employee_salary.salary_id = salary.id
left join employees on employees.id = employee_salary.employee_id
where employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from
employee_salary join salary on employee_salary.salary_id = salary.id 
left join employees on employees.id = employee_salary.employee_id 
where monthly_salary < 2000 and employee_name is null;

--5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from
employees left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from 
roles_employee join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

--7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from
roles_employee join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java %';

--8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from
roles_employee join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python %';

--9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from
roles_employee join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA %';

--10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from
roles_employee join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual%QA %';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from
roles_employee join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation%QA %';

--12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary from
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary from
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary from
employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select monthly_salary from 
salary join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Java %';

--16. ������� �������� Python �������������
select monthly_salary from 
salary join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Python %';

-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%Python %';

--18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle%%J%S%';

--19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Senior%Java %';

--20. ������� �������� Junior QA ���������
select monthly_salary from 
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%QA %';

--21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) from
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%J%S%';

--23. ������� ����������� �� QA ���������
select min(monthly_salary) from 
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';

--24. ������� ������������ �� QA ���������
select max(monthly_salary) from 
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';

--25. ������� ���������� QA ���������
select count(*) from
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';

--26. ������� ���������� Middle ������������.
select count(*) from
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle%';

--27. ������� ���������� �������������
select count(*) from
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) from
salary join employee_salary on salary.id = employee_salary.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, monthly_salary, role_name from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
order by monthly_salary asc;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, monthly_salary, role_name from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary >= 1700 and monthly_salary <= 2300
order by monthly_salary asc;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, monthly_salary, role_name from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary asc;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, monthly_salary, role_name from 
employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;

