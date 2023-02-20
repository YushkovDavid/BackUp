use proj


/*insert[developer] 
values ('Mojang')
insert [games]  
values ('GTA 5', 0.5, 3, 1500)*/

--select * from [games]
--select * from [Category]
--select * from [developer]
--select * from [Platform]
--select * from [games_platform]
--select * from [DLS]
--select * from [Status]


/*insert [DLS]
values ('Los Santos Drug Wars',0,4,300)*/

/*insert [games_category]
values (10,4)
insert [games_platform]
values (1,4)
insert [game_status]
values (4,4,1)*/
go

create Procedure UpdatePlatform
@id int,
@Name nvarchar(50)
as 
update Platform set Name = @Name
where id = @id
go

create Procedure AddPlatform
@Name nvarchar(50)
as
insert Platform(Name)
values(@Name)
go

create Procedure DeletePlatform
@id int
as
delete Platform
where id = @id
go

--------------------------------------------------------

create Procedure UpdateCategory
@id int,
@Name nvarchar(50)
as 
update Category set Name = @Name
where id = @id
go

create Procedure AddCategory
@Name nvarchar(50)
as
insert Category(Name)
values(@Name)
go

create Procedure DeleteCategory
@id int
as
delete Category
where id = @id
go

--------------------------------------------------------

create Procedure UpdateStatus
@id int,
@Name nvarchar(50)
as 
update Status set Name = @Name
where id = @id
go

create Procedure AddStatus
@Name nvarchar(50)
as
insert Status(Name)
values(@Name)
go

create Procedure DeleteStatus
@id int
as
delete Status
where id = @id
go

--------------------------------------------------------

create Procedure UpdateDLS
@id int,
@Name nvarchar(50),
@Sale int,
@Cost int,
@gameId int
as 
update DLS set Name = @Name
where id = @id
update DLS set Sale = @Sale
where id = @id
update DLS set Cost = @Cost
where id = @id
update DLS set game_id = @gameId
where id = @id
go

create Procedure AddDLS
@Name nvarchar(50),
@Sale int,
@Cost int,
@gameId int
as
insert DLS([Name], [Sale], [Cost], [game_id])
values(@Name, @Sale, @Cost, @gameId)
go

create Procedure DeleteDLS
@id int
as
delete DLS
where id = @id
go
