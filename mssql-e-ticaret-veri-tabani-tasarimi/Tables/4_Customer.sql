USE EcommerceDb
GO


CREATE TABLE Customer
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL,
Surname nvarchar(200) NOT NULL,
BirthDate date,
Email varchar(200) NOT NULL,
MobileNumber nvarchar(16) NOT NULL,
FixedNumber nvarchar(16),
ProfessionId int NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT fk_customer_profession foreign key (ProfessionId) references Profession(Id)
)