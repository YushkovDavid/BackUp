use project
go

create procedure UpdateDeveloper
@id int,
@Name nvarchar(50)
as
update developer set Name = @Name
where id = @id
go 

create procedure AddDeveloper
@Name nvarchar(50)
as
insert developer(Name)
values(@Name)
go

create procedure DeleteDeveloper
@id int
as
delete developer
where id = @id
go