USE EcommerceDb
GO


CREATE TABLE Product
(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(200) NOT NULL,
Description nvarchar(200) NOT NULL,
Price float NOT NULL,
StockStatus bit NOT NULL,
ImageUrl nvarchar(200) NOT NULL,
BrandId int NOT NULL,
BarcodeNumber nvarchar(200) NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT fk_product_brand foreign key (BrandId) references Brand(Id),
CONSTRAINT uq_product_name UNIQUE (Name),
CONSTRAINT uq_barcode_number UNIQUE (BarcodeNumber)
)