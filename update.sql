use clickcar;

UPDATE Veiculo
SET Preco = 138000
WHERE Nome = 'Corolla' AND Modelo = 'XEi';

UPDATE Entrega
SET Status = 'Entregue', Data = '2025-06-20'
WHERE Pedido_ID = 9;

UPDATE Funcionario
SET Cargo_ID = 2
WHERE Nome = 'Bruno Ferreira';

UPDATE Cliente
SET Email = 'pedro.oliveira@novoemail.com'
WHERE Nome = 'Pedro Oliveira';

UPDATE Cliente
SET Email = 'pedro.oliveira@novoemail.com'
WHERE Nome = 'Pedro Oliveira';

UPDATE Veiculo
SET Preco = Preco * 1.05
WHERE Tipo = 'SUV';

UPDATE Funcionario
SET Cargo_ID = (SELECT ID FROM Cargo WHERE Nome = 'Gerente')
WHERE Nome = 'João Silva';

