USE EcommerceDb
GO


CREATE TABLE District
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL,
ProvinceId int NOT NULL

CONSTRAINT fk_province_district foreign key (ProvinceId) references Province(Id)
)