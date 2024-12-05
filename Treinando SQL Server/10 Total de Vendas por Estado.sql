
--8. Total de Vendas por Estado
--Desafio: Calcule o total de vendas por estado.

USE  AdventureWorksDW2022

SELECT 
    G.StateProvinceName AS ESTADO,
    SUM(S.OrderQuantity) AS VENDAS
FROM FactInternetSales AS S
INNER JOIN DimCustomer AS C ON C.CustomerKey = S.CustomerKey
INNER JOIN DimGeography AS G ON G.GeographyKey = C.GeographyKey
GROUP BY G.StateProvinceName
ORDER BY 2 DESC