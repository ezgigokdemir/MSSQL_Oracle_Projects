USE EcommerceDb
GO


CREATE TABLE Sector
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT uq_sector_name UNIQUE (Name)
)