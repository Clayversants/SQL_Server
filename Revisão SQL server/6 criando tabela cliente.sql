
--criando a tabela
CREATE TABLE Clientes (
    ClienteId INT PRIMARY KEY,
    Nome VARCHAR(50),
    Cidade VARCHAR(30)
);

--adicionando valores
INSERT INTO Clientes (ClienteId, Nome, Cidade)
VALUES
(1, 'Maria', 'S�o Paulo'),
(2, 'Jo�o', 'Rio de Janeiro'),
(3, 'Ana', 'Curitiba');