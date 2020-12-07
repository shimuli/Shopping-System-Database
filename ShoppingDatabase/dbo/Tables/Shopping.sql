CREATE TABLE [dbo].[Shopping]
(
	[Item_id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [User_id] INT NOT NULL, 
    [Item_name] NVARCHAR(50) NOT NULL, 
    [Item_price] INT NOT NULL, 
    [Item_quantity] INT NOT NULL,
    [Image_url] NVARCHAR(MAX) NULL, 
    [Item_barcode] NVARCHAR(50) NULL, 
     [DateCreated] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Shopping_ToUserTable] FOREIGN KEY ([User_id]) REFERENCES [Users]([User_id])
)

GO

