
--Crie uma nova tabela chamada produtos com os dados

CREATE TABLE Produtos2 (
	ProdutoId INT PRIMARY KEY,
	NomeProduto VARCHAR(50),
	Preco DECIMAL(10, 2)
);

INSERT INTO Produtos2 (ProdutoId,NomeProduto,Preco)
VALUES
(1, 'Notebook', 3000.00),
(2, 'Smartphone', 1500.00),
(3, 'Monitor', 800.00)