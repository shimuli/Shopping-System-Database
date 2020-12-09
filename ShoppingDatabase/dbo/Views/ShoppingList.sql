CREATE VIEW [dbo].[ShoppingList]
	AS 
	SELECT [user].[User_id], [user].[Name], [shoping].[Item_id], [shoping].[Item_name], 
	[shoping].[Item_price], [shoping].[Item_quantity], [Item_price] * [shoping].[Item_quantity] AS Total_buying_price, [shoping].[Image_url], [shoping].[Item_barcode], [shoping].[DateCreated] from dbo.Users [user] 
	left join dbo.Shoping shoping 
	on [user].User_id = shoping.User_id
