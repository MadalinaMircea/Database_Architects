create view MyView
as
	select *
	from Architects a
	where a.Buildings >= 5

select * from MyView