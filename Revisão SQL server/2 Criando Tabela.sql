
--Criando Tabela

USE Curso_Online

CREATE TABLE Produtos (
	Id INT PRIMARY KEY,
	Nome VARCHAR(50),
	Preco DECIMAL(10, 2),
	Categoria VARCHAR(30)

);
--adcionando valores(dados) na tabela

INSERT INTO Produtos (Id,Nome,Preco,Categoria)
VALUES
(1, 'Produto A', 10.50, 'Eletr�nicos'),
(2, 'Produto B', 20.00, 'Eletrodom�sticos'),
(3, 'Produto C', 15.30, 'Eletr�nicos'),
(4, 'Produto D', 50.00, 'M�veis'),
(5, 'Produto E', 8.99, 'Eletr�nicos');

