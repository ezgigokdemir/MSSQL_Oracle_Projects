USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_PROFESSION] @RoleId INT, @Profession_Name NVARCHAR(50)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('Ýþlem için yetkiniz bulunmamaktadýr!',16,1);
END
ELSE IF @Profession_Name IN (SELECT PROFESSION_NAME FROM PROFESSION)
BEGIN
	RAISERROR('Girmiþ olduðunuz meslek sistemde mevcuttur!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[PROFESSION]
           ([PROFESSION_NAME])
     VALUES
           (@Profession_Name)

	PRINT 'Kayýt baþarýyla gerçekleþtirildi.'
END

