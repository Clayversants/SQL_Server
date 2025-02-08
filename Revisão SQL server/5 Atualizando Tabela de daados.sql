
-- Aqui eu tive que atualizar o preco do ID 1O, para 17.00
UPDATE Produtos
SET Preco = 17.00
WHERE Id = 10


SELECT*
FROM Produtos

--Aqui eu tive que deletar o produto de ID 11
DELETE FROM Produtos
WHERE Id = 11