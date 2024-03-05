use B22ADONETDB

select * from student

insert into student values ('Yatharth',1),('Ajay',1)

	select * from Trainer

go



--create Student SP 
create proc upsCreateTrainer
@Id int out, @Name varchar(50), @City varchar(30), @Experience int, @Status bit output
as
Begin
     Begin try
	          Begin Transaction
			     Insert into Trainer values( @Name, @City, @Experience)
				 Set @Id = Scope_Identity()
				 Set @Status = 1

		         Select * from Trainer where id = Scope_Identity()
		     Commit
	 end try
	 Begin Catch
			   set @Status = 0
	           set @Id = 0
	           Rollback
	 end Catch
End


go


--Update Trainer Ke liye SP
create proc uspUpdateTrainer
 @Id int, @Name varchar(50), @City varchar(30), @Experience int ,
@Status bit output
as
Begin
     Begin try 
	        Begin Transaction
	        if exists(Select Id from Trainer Where Id = @Id)
			  Begin
			     Update Trainer set Name = @Name, City = @City, Experience = @Experience
				 where Id = @Id

                 set @Status = 1
              end
			  else
			     begin
				      Set @Status = 0
			     end
             Commit
	 end try
	 Begin catch
	      Rollback
		  Set @Status = 0
	 end catch
end


go



--Delete Student

create proc uspDeleteTrainer
@Id int, @Status bit output
as
Begin 
      Begin try
	          begin Transaction
			        if exists(Select Id from Trainer Where Id = @Id)
						begin
						delete from trainer where Id = @Id
						set @Status = 1
						end
		            else

						begin
						set @Status = 0
						end
             commit
	  end try
	  begin Catch
				Rollback
	            Set @Status = 0
	  end Catch
end