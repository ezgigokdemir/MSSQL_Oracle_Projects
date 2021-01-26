USE EcommerceDb
GO


CREATE TABLE Color
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL

CONSTRAINT uq_color_name UNIQUE (Name)
)