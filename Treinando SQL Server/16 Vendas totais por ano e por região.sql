
USE AdventureWorksDW2022

-- Crie uma consulta que mostre o valor total de vendas por ano e por região (território). Mostre o ano, o território e o valor total de vendas.

SELECT 
	YEAR(S.OrderDate) AS ANO,
	G.EnglishCountryRegionName,
	SUM(S.SalesAmount) AS VALOR_TOTAL
FROM FactInternetSales AS S
INNER JOIN DimCustomer AS C ON C.CustomerKey = S.CustomerKey
INNER JOIN DimGeography AS G ON G.GeographyKey = C.GeographyKey
GROUP BY YEAR(S.OrderDate),G.EnglishCountryRegionName,G.CountryRegionCode
ORDER BY ANO DESC