USE EcommerceDb
GO


CREATE TABLE CategoryBrandMapping
(
Id int PRIMARY KEY IDENTITY,
CategoryId int NOT NULL,
BrandId int NOT NULL,

CONSTRAINT fk_map_category foreign key (CategoryId) references Category(Id),
CONSTRAINT fk_map_brand foreign key (BrandId) references Brand(Id),
)