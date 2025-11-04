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
