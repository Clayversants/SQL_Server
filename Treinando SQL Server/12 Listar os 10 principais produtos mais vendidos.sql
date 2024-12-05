

USE AdventureWorksDW2022

-- Obtenha os 10 produtos com mais vendas, mostrando o nome do produto, a quantidade total vendida e o valor total das vendas.


SELECT TOP 10
	P.EnglishProductName,
	SUM(S.OrderQuantity) AS TOTAL_VENDAS,
	SUM(S.SalesAmount) AS VALOR_TOTAL
FROM FactInternetSales AS S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
GROUP BY P.EnglishProductName
ORDER BY TOTAL_VENDAS DESC ,VALOR_TOTAL DESC