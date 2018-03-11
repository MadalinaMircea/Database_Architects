insert into Cities values (1, 'Cluj', 1800, 200000)
insert into Cities values (2, 'Targu Mures', 1900, 70000)
insert into Cities values (3, 'Bucuresti', 1700, 500000)

insert into Architects values (1, 'Madalina', 'Mircea', '1997-11-19', 10)
insert into Architects values (2, 'Ioana', 'Istrate', '1972-11-28', 4)
insert into Architects values (3, 'Doru', 'Mircea', '1972-10-14', 20)

insert into Buildings values (1, 'Casa Poporului', 1000, 100, 3, 3, 1)
insert into Buildings values (2, 'Opera', 975, 40, 1, 1, 3)
insert into Buildings values (3, 'Palatul Culturii', 800, 70, 1, 2, 2)
insert into Buildings values (4, 'Casa Presei', 700, 100, 2, 3, 1)

insert into Employees values (1, 'Musat Andreea', 10, 8)
insert into Employees values (2, 'Istrate Silvia', 45, 4)
insert into Employees values (3, 'Ciobanu Alexandru', 5, 6)
insert into Employees values (4, 'Popa Oana', 1, 8)

insert into Employment values (4, 1, '2017-3-3', 1000)
insert into Employment values (1, 4, '2015-10-2', 500)
insert into Employment values (1, 3, '2010-3-6', 700)

select * from Architects
select * from Buildings
select * from Cities
select * from Employees
select * from Employment

delete from Architects
delete from Buildings
delete from Cities
delete from Employees
delete from Employment