
USE AdventureWorksDW2022

--Liste os clientes que não fizeram nenhuma compra no ano de 2021. Exiba o ID do cliente, o nome completo e a última data de compra (se disponível).
--Não foi possivel trazer os clientes que fizeram compra no ano de 2021 pq o ano de 2021 não existe nessa base de dados

SELECT
	C.CustomerKey,
	CONCAT(C.FirstName,' ',C.LastName) AS NOME_COMPLETO,
	MAX(S.OrderDate) AS ULTIMAS_COMPRAS
FROM DimCustomer AS C
INNER JOIN FactInternetSales AS S ON S.CustomerKey = C.CustomerKey
GROUP BY C.CustomerKey,CONCAT(C.FirstName,' ',C.LastName)
