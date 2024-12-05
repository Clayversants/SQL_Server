

USE AdventureWorksDW2022

SELECT TOP 100
    D.DateKey,
	D.FullDateAlternateKey,
	D.WeekNumberOfYear,
	F.DateKey AS 'FIN',
	F.DepartmentGroupKey
FROM DimDate AS D
INNER JOIN FactFinance AS F ON F.DateKey = D.DateKey
ORDER BY 4 DESC
