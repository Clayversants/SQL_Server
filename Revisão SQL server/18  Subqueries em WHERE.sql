USE Curso_Online

--Encontrar pedidos acima da m�dia de valor

SELECT *
FROM Pedidos
WHERE Valor > (SELECT AVG(Valor) FROM Pedidos);


