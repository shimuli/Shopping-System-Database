CREATE TABLE [dbo].[Inventory]
(
	[InventoryId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Product_name] NVARCHAR(50) NOT NULL, 
    [Product_price] INT NOT NULL, 
    [Quantity] INT NOT NULL,
    [Current_quantity] INT NOT NULL DEFAULT 0, 
    [Image_url] NVARCHAR(200) NULL, 
    [barcode] NVARCHAR(50) NULL, 
    [Dateposted] DATETIME NOT NULL DEFAULT getdate(), 
    [User_id] INT NOT NULL, 
    [Isavailable] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Inventory_ToUserTable] FOREIGN KEY ([User_id]) REFERENCES [Users]([User_id])
)
