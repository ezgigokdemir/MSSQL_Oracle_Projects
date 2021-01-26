USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_PRODUCT] @RoleId INT, @Product_Name NVARCHAR(100), @License_PeriodId INT, @VersionNo NVARCHAR(20)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM DEMAND_TYPE WHERE ID = @License_PeriodId)
BEGIN
	RAISERROR('Girdi�iniz lisans periyodu ge�erli de�ildir!',16,1);
END
ELSE IF EXISTS(SELECT 1 FROM PRODUCT WHERE PRODUCT_NAME = @Product_Name)
BEGIN
	RAISERROR('Sistemde girmi� oldu�unuz �r�n ismi mevcuttur!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM LICENSE_PERIOD WHERE ID = @License_PeriodId)
BEGIN
	RAISERROR('Ge�ersiz lisans periyodu girdiniz!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[PRODUCT]
           ([PRODUCT_NAME]
           ,[LICENSE_PERIODID])
     VALUES
           (@Product_Name
           ,@License_PeriodId)

	DECLARE @ProductId INT = (SELECT IDENT_CURRENT('PRODUCT'))

	INSERT INTO [dbo].[VERSION]
			   ([PRODUCTID]
			   ,[VERSIONNO]
			   ,[CREATE_DATE]
			   ,[RECORD_STATUS])
		 VALUES
			   (@ProductId
			   ,@VersionNo
			   ,GETDATE()
			   ,1)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'

END

