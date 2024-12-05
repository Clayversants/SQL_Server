
--4. Detalhes de Vendas por Região
--Desafio: Liste o total de vendas, dividido por região, e inclua o nome da região e a quantidade de pedidos.

USE AdventureWorksDW2022

SELECT TOP 100
    ST.SalesTerritoryRegion,
	COUNT(S.OrderQuantity) AS QTDS_PEDIDOS,
    SUM(S.SalesAmount) AS TOTAL_VENDAS
FROM FactInternetSales AS S
INNER JOIN DimSalesTerritory AS ST ON ST.SalesTerritoryKey = S.SalesTerritoryKey
GROUP BY ST.SalesTerritoryRegion
ORDER BY 3 DESC