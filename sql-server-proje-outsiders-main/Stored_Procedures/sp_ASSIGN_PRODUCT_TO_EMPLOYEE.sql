USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_ASSIGN_PRODUCT_TO_EMPLOYEE] @RoleId INT, @ProductId INT, @EmployeeId INT
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM PRODUCT WHERE ID = @ProductId)
BEGIN
	RAISERROR('Ge�ersiz �r�n kodu girdiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM EMPLOYEE WHERE ID = @EmployeeId)
BEGIN
	RAISERROR('Ge�ersiz kullan�c� kodu girdiniz!',16,1);
END
ELSE IF EXISTS(SELECT 1 FROM PRODUCT_EMPLOYEE_MAPPING WHERE EMPLOYEEID = @EmployeeId AND PRODUCTID = @ProductId)
BEGIN
	RAISERROR('�lgili �r�n i�in kullan�c�ya daha �nce atama yap�lm��!',16,1);
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

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'
END