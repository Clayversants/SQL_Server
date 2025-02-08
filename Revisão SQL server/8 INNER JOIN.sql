USE Curso_Online

--Lista apenas os pedidos com clientes correspondentes
--Mostrar apenas clientes quem pedidos registrados

SELECT
	C.Nome AS Cliente,
	p.Valor AS ValorPedido,
	p.DataPedido
FROM Clientes AS C
INNER JOIN Pedidos AS P ON P.ClienteId = C.ClienteId
