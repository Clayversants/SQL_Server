USE Curso_Online

--Lista todos os clientes e pedidos,incluindo os n�o correspondentes
--Mostra todos os registros de ambas as tabelas,mesmo sem correspond�ncia

SELECT
	c.Nome AS Cliente,
	p.Valor AS ValorPedido,
	p.DataPedido
FROM Clientes AS c
FULL JOIN 
	Pedidos AS p ON P.ClienteId = c.ClienteId