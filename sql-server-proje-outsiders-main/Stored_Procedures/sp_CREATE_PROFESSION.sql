USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_PROFESSION] @RoleId INT, @Profession_Name NVARCHAR(50)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!',16,1);
END
ELSE IF @Profession_Name IN (SELECT PROFESSION_NAME FROM PROFESSION)
BEGIN
	RAISERROR('Girmi� oldu�unuz meslek sistemde mevcuttur!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[PROFESSION]
           ([PROFESSION_NAME])
     VALUES
           (@Profession_Name)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'
END

