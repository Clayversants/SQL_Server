
USE AdventureWorksDW2022

--MÉDIA PREÇO
SELECT
    AVG(UnitPrice)
FROM FactInternetSales


--PRODUTOS ABAIXO DA MÉDIA DO VALOR
SELECT
    ProductKey,
	UnitPrice
FROM FactInternetSales
WHERE UnitPrice  <= ( SELECT
    AVG(UnitPrice)
FROM FactInternetSales)
ORDER BY 2 DESC


--PRODUTOS ACIMA DA MÉDIA DE VALOR
SELECT
    ProductKey,
	UnitPrice
FROM FactInternetSales
WHERE UnitPrice  >= ( SELECT
    AVG(UnitPrice)
FROM FactInternetSales)
ORDER BY 2 DESC




