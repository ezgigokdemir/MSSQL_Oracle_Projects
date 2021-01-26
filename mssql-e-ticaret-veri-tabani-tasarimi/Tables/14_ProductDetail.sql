USE EcommerceDb
GO


CREATE TABLE ProductDetail
(
Id int PRIMARY KEY IDENTITY,
ProductId int NOT NULL,
ColorId int NOT NULL,
Size int,
FabricTypeId int,
Dimension nvarchar(200),
Depth int,

CONSTRAINT fk_product foreign key (ProductId) references Product(Id),
CONSTRAINT fk_color foreign key (ColorId) references Color(Id),
CONSTRAINT fk_fabrictype foreign key (FabricTypeId) references FabricType(Id)
)