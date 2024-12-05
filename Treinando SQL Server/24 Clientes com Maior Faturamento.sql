
USE Chinook

-- Identifique os 5 clientes com maior faturamento no banco de dados.

SELECT
  CONCAT(C.FirstName,' ',C.LastName) AS CLIENTES,
  SUM(I.InvoiceTotal) AS TOTAL_FATURAMENTO
FROM Customer AS C
JOIN Invoice AS I ON I.CustomerId = C.CustomerId
GROUP BY CONCAT(C.FirstName,' ',C.LastName)
ORDER BY 2 DESC