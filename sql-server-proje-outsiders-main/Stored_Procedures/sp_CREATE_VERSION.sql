USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_VERSION] @RoleId INT, @ProductId INT, @VersionNo NVARCHAR(20)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('Ýþlem için yetkiniz bulunmamaktadýr!!',16,1);
END
ELSE IF @ProductId NOT IN (SELECT ID FROM PRODUCT)
BEGIN
	RAISERROR('Geçersiz ürün kodu girdiniz!',16,1);
END
ELSE IF @VersionNo IN (SELECT VERSIONNO FROM VERSION WHERE PRODUCTID = @ProductId)
BEGIN
	RAISERROR('Girmiþ olduðunuz versiyon bilgisi mevcuttur!',16,1);
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

	PRINT 'Kayýt baþarýyla gerçekleþtirildi.'
END