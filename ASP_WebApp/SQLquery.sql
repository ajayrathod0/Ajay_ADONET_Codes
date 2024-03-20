use b22adonetdb

go


Create TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	Gander Varchar(100),
    Email VARCHAR(100),
    Password VARCHAR(100)
)
go

alter proc upsCreateUsers
@Id int out, @FirstName varchar(50), @LastName varchar(50),@Gander varchar(60),
@Email varchar(100), @Password varchar(100),
@Status bit out
as
Begin
     Begin try
	          Begin Transaction
			     Insert into Users values('@FirstName', '@LastName' ,'@Gander', '@Email' ,'@Password')
				 Set @Id = Scope_Identity()
				 Set @Status = 1

		         Select * from Users where @Id = Scope_Identity()
		     Commit
	 end try
	 Begin Catch
			   set @Status = 0
	           set @Id = 0
	           Rollback
	 end Catch
End

go

select * from Users