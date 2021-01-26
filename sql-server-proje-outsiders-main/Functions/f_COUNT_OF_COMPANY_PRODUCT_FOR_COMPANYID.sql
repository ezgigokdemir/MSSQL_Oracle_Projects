--Þirket id girilince aldýðý ürün sayýsýný veren fonksiyon.

CREATE FUNCTION f_COUNT_OF_COMPANY_PRODUCT_FOR_COMPANYID (@CompanyId int)
RETURNS INT 
AS
BEGIN 
DECLARE @count int 
SELECT @count = COUNT(*) FROM COMPANY_PRODUCT_MAPPING 
WHERE COMPANYID = @CompanyId

RETURN @count 
END 

