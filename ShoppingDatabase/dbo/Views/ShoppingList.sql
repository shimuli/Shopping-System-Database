CREATE VIEW [dbo].[ShoppingList]
	AS 
	SELECT [user].[User_id], [user].[Name], [shopping].[Item_id], [shopping].[Item_name], 
	[shopping].[Item_price], [shopping].[Item_quantity], [Item_price] * [shopping].[Item_quantity] AS Total_buying_price, [shopping].[Image_url], [shopping].[Item_barcode], [shopping].[DateCreated] from dbo.Users [user] 
	left join dbo.Shopping shopping 
	on [user].User_id = shopping.User_id
