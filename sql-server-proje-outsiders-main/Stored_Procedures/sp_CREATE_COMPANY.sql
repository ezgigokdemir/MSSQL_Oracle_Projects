USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_CREATE_COMPANY] @RoleId INT, @Company_Name NVARCHAR(255), @Website NVARCHAR(100), 
								   @Company_Email NVARCHAR(100), @Fixed_Number NVARCHAR(11), @Province_Name NVARCHAR(30), 
								   @District_Name NVARCHAR(50), @Address_Line NVARCHAR(255)
AS

IF @RoleId IS NULL OR @RoleId != 1
BEGIN
	RAISERROR('��lem i�in yetkiniz bulunmamaktad�r!!',16,1);
END
ELSE IF @Company_Name IN (SELECT COMPANY_NAME FROM COMPANY)
BEGIN
	RAISERROR('Girmi� oldu�unuz firma ismi sistemde mevcuttur!',16,1);
END
ELSE IF LEN(@Fixed_Number) < 10 OR LEN(@Fixed_Number) > 11
BEGIN
	RAISERROR('Telefon numaran�z en az 10 en fazla 11 hane olmal�d�r!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM PROVINCE WHERE PROVINCE_NAME = @Province_Name)
BEGIN
	RAISERROR('Hatal� �ehir bilgisi girdiniz!',16,1);
END
ELSE IF NOT EXISTS(SELECT 1 FROM DISTRICT WHERE DISTRICT_NAME = @District_Name)
BEGIN
	RAISERROR('Hatal� il�e bilgisi girdiniz!',16,1);
END
ELSE
BEGIN

	INSERT INTO [dbo].[COMPANY]
			   ([COMPANY_NAME]
			   ,[WEBSITE]
			   ,[COMPANY_EMAIL]
			   ,[FIXED_NUMBER]
			   ,[RECORD_STATUS])
		 VALUES
			   (@Company_Name
			   ,@Website
			   ,@Company_Email
			   ,(SELECT [dbo].[Format_Phone_Number] (@Fixed_Number))
			   ,1)
	END

	DECLARE @CompanyId INT, @ProvinceId INT, @DistrictId INT;
	SET @CompanyId = (SELECT ID FROM COMPANY WHERE COMPANY_NAME = @Company_Name);
	SET @ProvinceId = (SELECT ID FROM PROVINCE WHERE PROVINCE_NAME = @Province_Name);
	SET @DistrictId = (SELECT ID FROM DISTRICT WHERE DISTRICT_NAME = @District_Name);

	INSERT INTO [dbo].[COMPANY_ADDRESS_MAPPING]
			   ([COMPANYID]
			   ,[PROVINCEID]
			   ,[DISTRICTID]
			   ,[ADDRESS_LINE])
		 VALUES
			   (@CompanyId
			   ,@ProvinceId
			   ,@DistrictId
			   ,@Address_Line)

	PRINT 'Kay�t ba�ar�yla ger�ekle�tirildi.'