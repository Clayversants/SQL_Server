USE Curso_Online

--Encontrar pedidos acima da média de valor

SELECT *
FROM Pedidos
WHERE Valor > (SELECT AVG(Valor) FROM Pedidos);


