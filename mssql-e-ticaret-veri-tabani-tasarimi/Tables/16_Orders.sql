USE EcommerceDb
GO


CREATE TABLE Orders
(
Id int PRIMARY KEY IDENTITY,
CustomerId int NOT NULL,
TotalPrice float NOT NULL,
CreateDate date NOT NULL,
ChangeDate date NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT fk_customer foreign key (CustomerId) references Customer(Id)
)