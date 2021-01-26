USE EcommerceDb
GO


CREATE TABLE CustomerAddressMapping
(
Id int PRIMARY KEY IDENTITY,
CustomerId int NOT NULL,
ProvinceId int NOT NULL,
DistrictId int NOT NULL,
AddressLine nvarchar(250) NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT fk_map_customer foreign key (CustomerId) references Customer(Id),
CONSTRAINT fk_map_province foreign key (ProvinceId) references Province(Id),
CONSTRAINT fk_map_district foreign key (DistrictId) references District(Id)
)