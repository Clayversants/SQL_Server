
USE Chinook

--Liste os gêneros musicais mais populares em termos de quantidade de faixas vendidas.

SELECT
	G.Name AS GENÊRO,
	SUM(I.Quantity) AS QTD_ORDENS
FROM InvoiceLine AS I
	JOIN Track AS T ON T.TrackId = I.TrackId
	JOIN Genre AS G ON G.GenreId = T.GenreId
GROUP BY G.Name
ORDER BY 2 DESC