
USE Chinook

--Crie um relatório que mostre o total de vendas por artista, ordenado do maior para o menor.

SELECT
	A.Name AS ARTISTAS,
	SUM(IL.Quantity) AS QTD_ORDENS,
	SUM(I.InvoiceTotal) AS TOTAL_VENDAS
FROM Artist AS A
	JOIN Album AS AB ON AB.ArtistId = A.ArtistId
	JOIN Track AS T ON T.AlbumId = AB.AlbumId
	JOIN InvoiceLine AS IL ON IL.TrackId = T.TrackId
	JOIN Invoice AS I ON I.InvoiceId = IL.InvoiceId
GROUP BY A.Name
ORDER BY 3 DESC