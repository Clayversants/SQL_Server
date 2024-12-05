
USE AdventureWorksDW2022

SELECT TOP 100
    ST.SalesTerritoryKey,
	ST.SalesTerritoryGroup,
	G.EnglishCountryRegionName,
	C.FirstName,
	C.MaritalStatus
FROM DimSalesTerritory AS ST
INNER JOIN DimGeography AS G ON G.SalesTerritoryKey = ST.SalesTerritoryKey
INNER JOIN DimCustomer AS C ON C.GeographyKey = G.GeographyKey
WHERE C.MaritalStatus = 'M'
ORDER BY G.EnglishCountryRegionName DESC
