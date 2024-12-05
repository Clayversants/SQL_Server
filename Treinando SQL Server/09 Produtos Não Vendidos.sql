
--7. Produtos Não Vendidos
--Desafio: Identifique produtos que não tiveram vendas registradas.

USE AdventureWorksDW2022

SELECT
   P.EnglishProductName,
   SUM(S.OrderQuantity) AS VENDAS
FROM DimProduct AS P
LEFT JOIN FactInternetSales AS S ON S.ProductKey = P.ProductKey
GROUP BY 
    P.EnglishProductName
HAVING SUM(S.OrderQuantity) IS NULL

ORDER BY 2 ASC
