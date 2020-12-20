﻿CREATE TABLE [dbo].[Users]
(
	[User_id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL, 
    [Role] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(250) NOT NULL, 
    [isConfirmed] BIT NOT NULL DEFAULT 0, 
    [Token] NVARCHAR(250) NULL
)
