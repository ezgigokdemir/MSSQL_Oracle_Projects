USE EcommerceDb
GO


CREATE TABLE Profession
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL,
SectorId int NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT fk_profession_sector foreign key (SectorId) references Sector(Id),
CONSTRAINT uq_profession_name UNIQUE (Name)
)