--1.Создать таблицу employees 
--id. serial,  primary key,
--employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2.Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values ('Долгов Тимофей Артёмович'),
	   ('Коновалова Екатерина Глебовна'),
	   ('Маркина Полина Александровна'),
	   ('Дубинина София Константиновна'),
	   ('Масленникова Мария Арсентьевна'),
	   ('Хромова Мария Ивановна'),
	   ('Павлов Ярослав Даниилович'),
	   ('Федотов Семён Матвеевич'),
	   ('Морозов Егор Семёнович'),
	   ('Ильина Таисия Ильинична'),
	   ('Ефимова Моника Мироновна'),
	   ('Захаров Александр Егорович'),
	   ('Кудрявцева Кристина Егоровна'),
	   ('Кузнецов Дмитрий Артёмович'),
	   ('Елисеева Алёна Артёмовна'),
	   ('Дьякова София Дмитриевна'),
	   ('Корнилов Иван Максимович'),
	   ('Белов Платон Святославович'),
	   ('Попов Тимофей Германович'),
	   ('Полякова Екатерина Макаровна'),
	   ('Орлов Константин Матвеевич'),
	   ('Новикова Алёна Максимовна'),
	   ('Мальцева Мадина Артемьевна'),
	   ('Маслов Ярослав Ярославович'),
	   ('Островская Анна Антоновна'),
	   ('Покровская Виктория Алексеевна'),
	   ('Осипова Мира Александровна'),
	   ('Волков Ярослав Львович'),
	   ('Гусев Тигран Дмитриевич'),
	   ('Кузин Ян Михайлович'),
	   ('Чернышева Кира Владимировна'),
	   ('Ушакова Анастасия Борисовна'),
	   ('Игнатьев Михаил Георгиевич'),
	   ('Рудакова Милана Олеговна'),
	   ('Мальцева Василиса Марковна'),
	   ('Иванов Ярослав Егорович'),
	   ('Никитин Александр Антонович'),
	   ('Щербаков Андрей Владиславович'),
	   ('Егоров Егор Константинович'),
	   ('Петров Герман Степанович'),
	   ('Павлов Мирон Павлович'),
	   ('Кузнецов Иван Иванович'),
	   ('Иванов Владислав Игоревич'),
	   ('Петров Мирон Иванович'),
	   ('Демидов Мирослав Даниилович'),
	   ('Наумова Аделина Савельевна'),
	   ('Королев Роман Денисович'),
	   ('Новикова Виктория Львовна'),
	   ('Филатов Матвей Александрович'),
	   ('Егоров Егор Матвеевич'),
	   ('Дроздов Ростислав Даниилович'),
	   ('Ермаков Максим Максимович'),
	   ('Емельянов Роман Кириллович'),
	   ('Захарова Евгения Тимофеевна'),
	   ('Попов Владислав Михайлович'),
	   ('Сидорова Кристина Александровна'),
	   ('Иванов Андрей Павлович'),
	   ('Комаров Андрей Адрианович'),
	   ('Гусева Ульяна Романовна'),
	   ('Макаров Егор Елисеевич'),
	   ('Шарова Ариана Адамовна'),
	   ('Малышева Полина Дмитриевна'),
	   ('Васильев Роман Степанович'),
	   ('Смирнов Эмир Всеволодович'),
	   ('Кузнецов Глеб Игоревич'),
	   ('Смирнов Арсений Иванович'),
	   ('Гуляева Елизавета Елисеевна'),
	   ('Тарасова Маргарита Владиславовна'),
	   ('Плотников Тимофей Данилович'),
	   ('Комиссаров Иван Даниилович');

select * from employees;
	  
--3.Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

--4.Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),
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

select * from salary;
--5.Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6.Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (1,10), (2,11), (3,12), (4,13), (5,14), (6,15), (7,16), (8,1), (9,8), (10,9), (11,12), (12,1), (13,2), (14,3), (15,4), (16,5), (17,6), (18,7), (19,8), (20,9), 
(21,10), (22,11), (23,12), (24,13), (25,14), (26,15), (27,16), (28,7), (29,8), (30,9), (72,3), (73,4), (71,5), (78,6), (76,8), (75,9), (74,10), (77,1), (88,4), (79,9);

select * from employee_salary;
--7.Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);

--8.Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);

--9.Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
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

select * from roles;

--10.Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (1, 2), (2, 3), (3, 4), (4, 5), (5, 1), (6, 7), (7, 8), (8, 6), (9, 7), (10, 8), (11, 10), (12, 9), (13, 12), (14, 15), (15, 13), (16, 14), (17, 16), (18, 17), (19, 18), (20, 19),
(21, 20), (22, 1), (23, 2), (24, 3), (25, 4), (26, 5), (27, 6), (28, 7), (29, 8), (30, 9), (31, 10), (32, 11), (33, 12), (34, 13), (35, 14), (36, 15), (37, 16), (38, 17), (39, 18), (40, 20);

select * from roles_employee;
        