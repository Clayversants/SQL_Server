USE Curso_Online

SELECT
	c.Nome AS Cliente,
	p.NomeProduto AS Produto
FROM Clientes AS c
LEFT JOIN Produtos2 AS p ON p.ProdutoId = c.ClienteId
