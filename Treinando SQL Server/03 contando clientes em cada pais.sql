

---1. Contagem de Clientes por País
---Desafio: Escreva uma consulta que conte o número de clientes por país.


USE AdventureWorksDW2022

SELECT 
	G.EnglishCountryRegionName,
	COUNT (C.CustomerKey) AS 'Total de clientes'
FROM DimCustomer AS C
INNER JOIN DimGeography AS G ON G.GeographyKey = C.GeographyKey
GROUP BY G.EnglishCountryRegionName 
ORDER BY 2 DESC

