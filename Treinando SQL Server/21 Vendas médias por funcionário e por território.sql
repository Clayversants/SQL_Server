
USE AdventureWorksDW2022

--Mostre a venda média por funcionário para cada território. A consulta deve incluir o território, o nome do funcionário e a venda média.

SELECT 
	T.SalesTerritoryCountry,
	CONCAT(E.FirstName,' ',E.LastName) AS Funcionário,
	AVG(S.SalesAmount) AS Venda_media
FROM FactInternetSales AS S
	INNER JOIN DimSalesTerritory AS T ON T.SalesTerritoryKey = S.SalesTerritoryKey
	INNER JOIN DimGeography AS G ON G.SalesTerritoryKey = T.SalesTerritoryKey
	INNER JOIN DimEmployee AS E ON E.SalesTerritoryKey = T.SalesTerritoryKey
GROUP BY 
	T.SalesTerritoryCountry,
	CONCAT(E.FirstName,' ',E.LastName)
ORDER BY 
	Venda_media DESC