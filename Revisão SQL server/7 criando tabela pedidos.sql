
--criando a tabela

CREATE TABLE Pedidos (
    PedidoId INT PRIMARY KEY,
    ClienteId INT,
    Valor DECIMAL(10, 2),
    DataPedido DATE,
    FOREIGN KEY (ClienteId) REFERENCES Clientes(ClienteId)
);
--adicionando valores
INSERT INTO Pedidos (PedidoId, ClienteId, Valor, DataPedido)
VALUES
(101, 1, 500.00, '2024-12-01'),
(102, 2, 250.00, '2024-12-02'),
(103, 1, 300.00, '2024-12-03');