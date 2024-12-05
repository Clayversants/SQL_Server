

---2. Top 5 Produtos Mais Vendidos
---Desafio: Escreva uma consulta que retorne os cinco produtos mais vendidos em termos de quantidade.


USE AdventureWorksDW2022

SELECT TOP 5
   COUNT (IT.ProductKey) AS 'Clientes',
	D.EnglishProductName
FROM FactInternetSales AS IT
INNER JOIN DimProduct AS D ON D.ProductKey = IT.ProductKey
GROUP BY D.EnglishProductName
ORDER BY 1 DESC