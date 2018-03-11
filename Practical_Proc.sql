alter procedure AddBuilding
	@EmployeeID int,
	@BuildingID int,
	@Finalization date,
	@Monthly int
as
begin
	--check if the recording already exists
	declare @aux int

	select @aux = count(*)
	from Employment e
	where e.EmpID = @EmployeeID and e.BuildingID = @BuildingID

	if @aux = 0
	begin
		--the recording does not exist, so we insert it
		insert into Employment values (@EmployeeID, @BuildingID, @Finalization, @Monthly)
	end
	else
	begin
		--the recording exists, so we update it
		update Employment set Finalization = @Finalization, Monthly = @Monthly where EmpID = @EmployeeID and BuildingID = @BuildingID
	end
end

select * from Employment
exec AddBuilding 2, 2, '2012-3-20', 1000
select * from Employment

select * from Employment
exec AddBuilding 4, 1, '2012-10-10', 1000
select * from Employment

delete from Employment where EmpID = 1 and BuildingID = 2