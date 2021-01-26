USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_VERSION] @RoleId INT, @ProductId INT, @VersionNo NVARCHAR(20)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF @ProductId NOT IN (SELECT ID FROM PRODUCT)
BEGIN
	RAISERROR('Ge�ersiz �r�n kodu girdiniz!',16,1);
END
ELSE IF @VersionNo IN (SELECT VERSIONNO FROM VERSION WHERE PRODUCTID = @ProductId)
BEGIN
	RAISERROR('Girmi� oldu�unuz versiyon bilgisi mevcuttur!',16,1);
END
ELSE
BEGIN
	--UPDATE VERSION SET RECORD_STATUS=0 WHERE PRODUCTID=@ProductId
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