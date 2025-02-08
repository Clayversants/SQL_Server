USE Curso_Online

--Lista todos os clientes,mesmo os que n�o fizeram pedidos
--Inclui clientes sem pedidos (mostrar� NULL nas colunas do pedido)

SELECT
	c.Nome AS Cliente,
	p.Valor AS ValorPedido,
	p.DataPedido
FROM Clientes AS c
LEFT JOIN 
	Pedidos AS p ON P.ClienteId = c.ClienteId