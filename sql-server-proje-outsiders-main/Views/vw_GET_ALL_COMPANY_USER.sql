CREATE VIEW vw_GET_ALL_COMPANY_USER AS
SELECT 
	[COMPANY_USER_NAME] NAME,
	[COMPANY_USER_SURNAME] SURNAME
FROM 
	[dbo].[COMPANY_USER]
