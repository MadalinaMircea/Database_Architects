create function MyFunction()
returns table
as
return
	select *
	from Employees e
	where e.EmpID NOT IN
		(select EmpID
		from Employment)

select * from MyFunction()