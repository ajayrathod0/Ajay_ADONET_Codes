create database B22ADONETDB

use b22adonetdb

create table Trainer(
Id int primary key identity,
Name varchar(50),
City varchar(50),
Experience int
)

go

insert into Trainer values('Vikul','Pune',14),('Usha','Mumbai',3)

select * from trainer

