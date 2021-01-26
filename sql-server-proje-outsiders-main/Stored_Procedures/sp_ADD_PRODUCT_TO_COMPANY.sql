USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_ADD_PRODUCT_TO_COMPANY] @RoleId INT, @ProductId INT, @CompanyId INT								   
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('Ýþlem için yetkiniz bulunmamaktadýr!!',16,1);
END
ELSE IF @ProductId NOT IN (SELECT ID FROM PRODUCT)
BEGIN
	RAISERROR('Geçersiz ürün kodu girdiniz!',16,1);
END
ELSE IF @CompanyId NOT IN (SELECT ID FROM COMPANY)
BEGIN
	RAISERROR('Geçersiz firma kodu girdiniz!',16,1);
END
ELSE
BEGIN
	DECLARE @License_Period_End_Date DATETIME;
	DECLARE @License_Period_of_Product INT = (SELECT LICENSE_PERIODID FROM PRODUCT WHERE ID = @ProductId)

	SET @License_Period_End_Date = CASE @License_Period_of_Product
						 WHEN 1 THEN DATEADD(MONTH, 6, GETDATE()) 
						 WHEN 2 THEN DATEADD(YEAR, 1, GETDATE())
					   END;

	INSERT INTO [dbo].[COMPANY_PRODUCT_MAPPING]
			   ([PRODUCTID]
			   ,[COMPANYID]
			   ,[CREATE_DATE]
			   ,[LICENSE_PERIOD_END_DATE])
		 VALUES
			   (@ProductId
			   ,@CompanyId
			   ,GETDATE()
			   ,@License_Period_End_Date)

	PRINT 'Kayýt baþarýyla gerçekleþtirildi.'
END

