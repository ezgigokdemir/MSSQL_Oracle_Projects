USE EcommerceDb
GO


CREATE TABLE OrderStatus
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL

CONSTRAINT uq_orderstatus UNIQUE (Name)
)