USE Curso_Online

--Liste os produtos comprados em cada pedido

SELECT
	p.PedidoId AS Pedido,
	pt.NomeProduto AS Produto
FROM Produtos2 AS pt
INNER JOIN Pedidos AS p ON p.ClienteId = pt.ProdutoId