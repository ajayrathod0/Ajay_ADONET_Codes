use b22adonetdb

select * from trainer
go

create table trainer(
Id int primary key ,
Name varchar(50),
City varchar(30),
Experience int
)

go

select * from trainer

delete from trainer 

drop table Birth
go

--Id, Name, DateOfBirth, Mobile, Email, WhatsAppMessage, EmailSubject, 
--EmailBody, MessageSentDate, EmailSentDate

CREATE PROCEDURE GetFriendsWithTodayBirthday
AS
BEGIN
    SELECT * FROM Friends
	      --DOB ka month      aaj ka month same hai to
    WHERE MONTH(DateOfBirth) = MONTH(GETDATE()) AND DAY(DateOfBirth) = DAY(GETDATE());
END;                                               --DOB ka Day  or   aaj ka day sam hai to select kar

go

CREATE TABLE Friends (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    DateOfBirth DATE,
    Mobile NVARCHAR(20),
    Email NVARCHAR(100),
    WhatsAppMessage NVARCHAR(200),
    EmailSubject NVARCHAR(200),
    EmailBody NVARCHAR(MAX),
    MessageSentDate DATETIME,
    EmailSentDate DATETIME
)

insert into Friends values('Ajay','2001-02-25','9630078291','ajayjathod@gmail.com',
'Happy Birthday','BirthDay','Happy B.day','2024-03-03','2024-03-03')

insert into Friends values('Ajju','2001-03-05','9630078291','ajayjathod@gmail.com',
'Happy Birthday','BirthDay','Happy B.day','2024-03-05 12:00:00','2024-03-05 12:00:00'),

('AJ','2001-03-03','9630078291','ajayjathod@gmail.com',
'Happy Birthday','BirthDay','Happy B.day','2024-03-03 12:00:00','2024-03-03 12:00:00'),

('Ajay Jathod','2001-03-04','9630078291','ajayjathod@gmail.com',
'Happy Birthday','BirthDay','Happy B.day','2024-03-04 12:00:00','2024-03-04 12:00:00')


select * from Friends