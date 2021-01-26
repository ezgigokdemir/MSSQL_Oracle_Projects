USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_COMPANY_USER] @RoleIdForCreator INT, @Company_User_Name NVARCHAR(50), @Company_User_Surname NVARCHAR(50), 
									    @Mobile_Number NVARCHAR(15), @Company_User_Email NVARCHAR(50), @CompanyId INT, @RoleId INT
AS

--DECLARE @RoleId INT = (SELECT ID FROM ROLE WHERE ROLE_NAME = @Role_Name);
--DECLARE @CompanyId INT = (SELECT ID FROM COMPANY WHERE COMPANY_NAME = @CompanyName);


IF @RoleIdForCreator IS NULL OR @RoleIdForCreator != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF @RoleId IS NULL OR (@RoleId != 3 AND @RoleId != 4)
BEGIN
	RAISERROR('Girdi�iniz rol �al��an t�r� i�in ge�erli de�ildir!',16,1);	
END
ELSE IF @CompanyId IS NULL
BEGIN
	RAISERROR('Girdi�iniz isimde bir firma mevcut de�ildir!',16,1);
END
ELSE
BEGIN
	INSERT INTO [dbo].[COMPANY_USER]
			   ([COMPANY_USER_NAME]
			   ,[COMPANY_USER_SURNAME]
			   ,[MOBILE_NUMBER]
			   ,[COMPANY_USER_EMAIL]
			   ,[COMPANYID]
			   ,[CREATE_DATE]
			   ,[MODIFICATION_DATE]
			   ,[RECORD_STATUS]
			   ,[ROLEID])
		 VALUES
			   (@Company_User_Name
			   ,@Company_User_Surname
			   ,@Mobile_Number
			   ,@Company_User_Email
			   ,@CompanyId
			   ,GETDATE()
			   ,GETDATE()
			   ,1
			   ,@RoleId)

	DECLARE @Company_UserId INT = (SELECT IDENT_CURRENT('COMPANY_USER'))

	--INSERT INTO [dbo].[COMPANY_USER_ROLE_MAPPING]
	--		   ([ROLEID]
	--		   ,[COMPANY_USERID]
	--		   ,[RECORD_STATUS])
	--	 VALUES
	--		   (@RoleId
	--		   ,@Company_UserId
	--		   ,1)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'
END





