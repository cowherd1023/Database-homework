SELECT NAME2,ROUND(LATE*100.00/TOTAL*1.00,2) AS RATE FROM
    (SELECT CompanyName AS NAME1, COUNT(*) AS TOTAL FROM 'Order',Shipper
	WHERE SHIPVia=Shipper.id
	GROUP BY Shipper.id),
	(SELECT CompanyName AS NAME2, COUNT(*) AS Late FROM 'Order',Shipper
	WHERE ShippedDate>RequiredDate AND SHIPVia=Shipper.id
	GROUP BY Shipper.id)
	WHERE NAME1=NAME2
	Order By RATE DESC;