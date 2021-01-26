USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_ASSIGN_PRODUCT_TO_EMPLOYEE] @RoleId INT, @ProductId INT, @EmployeeId INT
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('Ýþlem için yetkiniz bulunmamaktadýr!!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM PRODUCT WHERE ID = @ProductId)
BEGIN
	RAISERROR('Geçersiz ürün kodu girdiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM EMPLOYEE WHERE ID = @EmployeeId)
BEGIN
	RAISERROR('Geçersiz kullanýcý kodu girdiniz!',16,1);
END
ELSE IF EXISTS(SELECT 1 FROM PRODUCT_EMPLOYEE_MAPPING WHERE EMPLOYEEID = @EmployeeId AND PRODUCTID = @ProductId)
BEGIN
	RAISERROR('Ýlgili ürün için kullanýcýya daha önce atama yapýlmýþ!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[PRODUCT_EMPLOYEE_MAPPING]
			   ([PRODUCTID]
			   ,[EMPLOYEEID]
			   ,[RECORD_STATUS])
		 VALUES
			   (@ProductId
			   ,@EmployeeId
			   ,1)

	PRINT 'Kayýt baþarýyla gerçekleþtirildi.'
END