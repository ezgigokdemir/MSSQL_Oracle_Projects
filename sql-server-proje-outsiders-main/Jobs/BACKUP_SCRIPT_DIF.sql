USE [HELP_DESK]
GO

DECLARE @MyFileName varchar(1000)

SELECT @MyFileName = (SELECT 'D:\HelpDeskBackup\HelpDeskBackupDif_' + convert(varchar(500),GetDate(),112) + '.bak');

BACKUP DATABASE [HELP_DESK]
   TO  DISK = @MyFileName
   WITH DIFFERENTIAL;
GO