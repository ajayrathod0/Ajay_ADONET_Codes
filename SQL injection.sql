use b22adonetdb

select * from trainer

select * from student

select RollNumber , Name, TrainerId from Student where RollNumber = 1

select * from student where RollNumber = 1;delete from Student

insert into Student values ('Yatharth', 1), ('ajay',1)

select * from Student

go



--SQL Injection

--1. using parameterized query
declare @RollNumber int = 5
select * from student where RollNumber = @RollNumber





go

--2. using Sp 
create proc uspGetStudentByRollNumber
@rollNumber varchar(50)
as
begin 
     select RollNumber, Name, TrainerId from Student where RollNumber = @rollNumber
end

go

execute uspGetStudentByRollNumber 5

go

create proc uspCreateTrainer
@Name varchar(30), @City varchar(20), @Experience int ,  @Id int output,
@Stutus bit output
as
begin
      begin try
	       begin transaction
	           insert into Trainer values(@Name, @City, @Experience)
			   set @Id = Scope_Identity()  

			   set @Stutus = 1

			   select * from Trainer where Id = SCOPE_IDENTITY()
           commit
	  end try
	  begin catch
	            set @Id = 0
	            set @Stutus =0
            rollback
	  end catch
end