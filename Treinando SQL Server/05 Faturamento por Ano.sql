
--3. Faturamento por Ano
--Desafio: Calcule o faturamento anual de vendas na internet.

USE AdventureWorksDW2022

SELECT DISTINCT
    YEAR(OrderDate) AS ANO,
	SUM(SalesAmount) AS VENDAS
FROM FactInternetSales
GROUP BY YEAR(OrderDate)
ORDER BY ANO DESC