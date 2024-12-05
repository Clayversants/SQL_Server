
--6. Identificação de Clientes Frequentes
--Desafio: Liste os clientes que realizaram mais de 10 compras.

USE AdventureWorksDW2022

SELECT 
    C.FirstName,
	C.LastName,
	SUM(S.OrderQuantity) AS PEDIDOS
FROM FactInternetSales AS S
INNER JOIN DimCustomer AS C ON C.CustomerKey = S.CustomerKey
GROUP BY 
    C.FirstName,
	C.LastName
HAVING 
    SUM(S.OrderQuantity) >= 10

ORDER BY 3 DESC

       

