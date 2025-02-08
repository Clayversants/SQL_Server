USE Curso_Online

--Mostrar o maior valor de pedido junto com os outros pedidos

SELECT 
    PedidoId, 
    Valor,
    (SELECT MAX(Valor) FROM Pedidos) AS MaiorPedido
FROM Pedidos;


