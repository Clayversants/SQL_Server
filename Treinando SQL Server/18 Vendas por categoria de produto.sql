
USE AdventureWorksDW2022

--Liste o total de vendas por categoria de produto. Inclua o nome da categoria e o valor total vendido.

SELECT
	PC.EnglishProductCategoryName,
	SUM(S.SalesAmount) AS TOTAL_VENDAS
FROM FactInternetSales AS S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
GROUP BY PC.EnglishProductCategoryName