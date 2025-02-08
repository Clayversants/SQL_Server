USE Curso_Online

--Lista todos os pedidos,mesmo sem cliente correspondente
--Inclui pedidos sem clientes(mostrará NULL nas colunas do cliente)

SELECT
	c.Nome AS Cliente,
	p.Valor AS ValorPedido,
	p.DataPedido
FROM Clientes AS c
RIGHT JOIN 
	Pedidos AS p ON p.ClienteId = c.ClienteId