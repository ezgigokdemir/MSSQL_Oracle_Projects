USE [HELP_DESK]
GO

CREATE PROCEDURE [dbo].[sp_ADD_COMPANY_ADDRESS] @RoleId INT,@Company_Name NVARCHAR(255), @Province_Name NVARCHAR(30), 
									    @District_Name NVARCHAR(50), @Address_Line NVARCHAR(255)
AS

IF @RoleId IS NULL OR @RoleId != 1 OR @RoleId != 3
BEGIN
	RAISERROR('Ýþlem için yetkiniz bulunmamaktadýr!',16,1);
END

ELSE IF NOT EXISTS(SELECT 1 FROM COMPANY WHERE COMPANY_NAME = @Company_Name)
BEGIN
	RAISERROR('Girmiþ olduðunuz firma ismi sistemde mevcut deðildir!',16,1);
END

ELSE IF NOT EXISTS(SELECT 1 FROM PROVINCE WHERE PROVINCE_NAME = @Province_Name)
BEGIN
	RAISERROR('Hatalý þehir bilgisi girdiniz!',16,1);
END

ELSE IF (SELECT TOP 1 PROVINCE_NAME FROM DISTRICT D INNER JOIN PROVINCE P ON D.PROVINCEID=P.ID)=@Province_Name
BEGIN
	RAISERROR('Hatalý ilçe bilgisi girdiniz!',16,1);
END

ELSE
BEGIN
DECLARE @CompanyId INT = (SELECT ID FROM COMPANY WHERE COMPANY_NAME = @Company_Name)
DECLARE @ProvinceId INT = (SELECT ID FROM PROVINCE WHERE PROVINCE_NAME = @Province_Name);
DECLARE @DistrictId INT = (SELECT ID FROM DISTRICT WHERE DISTRICT_NAME = @District_Name);

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
	PRINT 'Kayýt baþarýyla gerçekleþtirildi.'
END