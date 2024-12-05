
--5. Média de Desconto por Categoria de Produto
--Desafio: Encontre a média de desconto concedido por categoria de produto.


USE AdventureWorksDW2022

SELECT 
	PC.EnglishProductCategoryName AS NOME_CATEGORIA,
	PC.ProductCategoryKey AS CATEGORIA,
	AVG(S.DiscountAmount) AS MÉDIA_DESCONTO
FROM FactInternetSales AS S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
GROUP BY 
    PC.EnglishProductCategoryName,
	PC.ProductCategoryKey
ORDER BY 2 DESC