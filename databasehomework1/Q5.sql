SELECT NAME,CompanyName,ContactName FROM 
	(SELECT ProductName AS NAME,MIN("Order".orderdate),"Order".CustomerId AS NEEDID 
	FROM Product,OrderDetail,"Order"
	WHERE Discontinued=1 AND Product.Id=OrderDetail.ProductId AND OrderDetail.Orderid="Order".Id
	GROUP BY ProductName),Customer
	WHERE Customer.id=NEEDID
	Order BY NAME;