USE Curso_Online

--Clientes que fizeram pedidos acima de R$300,00

SELECT
	c.Nome AS Cliente,
	p.Valor AS ValorPedido
FROM Clientes AS c
INNER JOIN 
	Pedidos AS p ON p.ClienteId = c.ClienteId
WHERE p.Valor > 300