USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_DEPARTMENT] @RoleId INT, @Department_Name NVARCHAR(50)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF @Department_Name IN (SELECT DEPARTMENT_NAME FROM DEPARTMENT)
BEGIN
	RAISERROR('Girmi� oldu�unuz departman sistemde mevcuttur!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[DEPARTMENT]
           ([DEPARTMENT_NAME])
     VALUES
           (@Department_Name)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'
END


