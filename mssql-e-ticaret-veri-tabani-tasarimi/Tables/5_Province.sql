USE EcommerceDb
GO


CREATE TABLE Province
(
Id int PRIMARY KEY IDENTITY,
PlateNo int NOT NULL,
Name nvarchar(200) NOT NULL,

CONSTRAINT uq_province_name UNIQUE (Name),
CONSTRAINT uq_plate_no UNIQUE (PlateNo)
)