USE EcommerceDb
GO


CREATE TABLE Category
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(250) NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT uq_category_name UNIQUE (Name)
)