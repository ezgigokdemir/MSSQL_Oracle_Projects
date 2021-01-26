USE EcommerceDb
GO


CREATE TABLE Brand
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT uq_brand_name UNIQUE (Name)
)