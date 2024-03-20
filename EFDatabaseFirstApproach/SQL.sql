use b22adonetdb
go

select * from trainer

go

create proc uspGetTrainers
as
begin
     select * from Trainer
end

go


execute uspGetTrainers

go



-- Join 3 Table in linq syntax in entity framwork
create table Course (
Id int primary key identity,
Name varchar(50),
Duration int
)
insert into Course values('Dot Net',6),('Intership',1)

go

alter table Student add CourseId int foreign key references Course(Id)





