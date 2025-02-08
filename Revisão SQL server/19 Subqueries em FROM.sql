USE Curso_Online

--Total de pedidos por cliente usando subquery

SELECT 
    ClienteId, 
    TotalPorCliente
FROM (
    SELECT 
        ClienteId, 
        SUM(Valor) AS TotalPorCliente
    FROM Pedidos
    GROUP BY ClienteId
) AS TabelaTemporaria
WHERE TotalPorCliente > 500;
