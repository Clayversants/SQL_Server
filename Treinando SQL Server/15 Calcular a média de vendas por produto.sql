
USE AdventureWorksDW2022

--Calcule a média de vendas por produto. Mostre o nome do produto e o valor médio das vendas.

SELECT
	P.EnglishProductName,
	AVG(SalesAmount) AS VALOR_MEDIO
FROM FactInternetSales AS S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
GROUP BY P.EnglishProductName
ORDER BY VALOR_MEDIO DESC