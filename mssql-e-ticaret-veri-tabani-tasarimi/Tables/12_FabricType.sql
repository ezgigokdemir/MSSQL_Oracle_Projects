USE EcommerceDb
GO


CREATE TABLE FabricType
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL

CONSTRAINT uq_fabrictype_name UNIQUE (Name)
)