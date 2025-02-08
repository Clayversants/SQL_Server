USE Curso_Online

--Relacione pedidos e clientes que os fizeram

SELECT
	p.PedidoId AS Pedido,
	c.Nome AS Cliente,
	p.DataPedido
FROM Pedidos AS p
INNER JOIN 
	Clientes AS c ON c.ClienteId = p.ClienteId