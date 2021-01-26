USE [HELP_DESK]
GO

INSERT INTO [dbo].[DEMAND_STATE]
           ([STATE])
     VALUES
           ('Accepted'),
		   ('In Test Process'),
		   ('Completed'),
		   ('Non Closed')
GO