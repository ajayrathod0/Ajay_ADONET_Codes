create table Student(
RollNumber int primary key identity,
Name varchar(30),
TrainerId int foreign key references Trainer(Id) 
)
insert into Student values('Ajay',1),('vishal',2)


select rollnumber , name,TrainerId from student;select Id, Name,City,Experience from trainer
