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