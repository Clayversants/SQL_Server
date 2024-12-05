
USE AdventureWorksDW2022

--Liste todas as vendas ocorridas entre 01/01/2020 e 31/12/2020, incluindo o ID da venda, o ID do cliente, a data da venda e o valor total.
-- OBS: A data correspondente ao desafio não existe no banco de dados,então filtrei outra data

SELECT
	OrderDateKey,
	CustomerKey,
	OrderDate,
	SUM(SalesAmount) AS VALOR_TOTAL
FROM FactInternetSales
WHERE OrderDate BETWEEN '2010-12-29' AND '2013-12-06'
GROUP BY OrderDateKey,CustomerKey,OrderDate
ORDER BY OrderDate ASC