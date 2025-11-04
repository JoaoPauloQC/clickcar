-- ===== MARCAS =====
INSERT INTO Marca (Nome) VALUES
('Toyota'),
('Honda'),
('Peugeot'),
('Renault'),
('Mitsubishi'),
('Chevrolet'),
('Ford'),
('Nissan'),
('Hyundai'),
('Jeep'),
('Volkswagen');

-- ===== VEÍCULOS =====
INSERT INTO Veiculo (Marca_id, Nome, Modelo, Ano, Tipo, Preco) VALUES
(1, 'Corolla', 'XEi', 2022, 'Sedan', 130000),
(1, 'Hilux', 'SRX', 2023, 'Pickup', 260000),
(2, 'Civic', 'Touring', 2021, 'Sedan', 150000),
(9, '208', 'Allure', 2023, 'Hatch', 92000),
(10, 'Duster', 'Intense', 2022, 'SUV', 120000),
(11, 'L200 Triton', 'Sport GLS', 2024, 'Pickup', 230000),
(2, 'HR-V', 'EXL', 2023, 'SUV', 175000),
(3, 'Onix', 'LT', 2022, 'Hatch', 95000),
(4, 'Ranger', 'Limited', 2023, 'Pickup', 240000),
(5, 'T-Cross', 'Comfortline', 2023, 'SUV', 160000),
(6, 'Kicks', 'Exclusive', 2023, 'SUV', 135000),
(7, 'HB20', 'Comfort Plus', 2024, 'Hatch', 98000),
(8, 'Compass', 'Longitude', 2023, 'SUV', 180000),
(3, 'Tracker', 'Premier', 2022, 'SUV', 145000);

-- ===== CARGOS =====
INSERT INTO Cargo (Nome, Descricao) VALUES
('Vendedor', 'Responsável pelas vendas de veículos'),
('Gerente', 'Gerencia a unidade e coordena a equipe'),
('Estoquista', 'Controla o estoque de veículos'),
('Entregador', 'Entrega os veículos aos clientes');

-- ===== FUNCIONÁRIOS =====
INSERT INTO Funcionario (Nome, Cargo_ID) VALUES
('João Silva', 1),
('Mariana Souza', 2),
('Carlos Lima', 3),
('Bruno Ferreira', 1),
('Camila Martins', 2),
('Rafael Alves', 4);

-- ===== CLIENTES =====
INSERT INTO Cliente (Nome, Email, Senha, CPF) VALUES
('Pedro Oliveira', 'pedro@mail.com', '1234', '123.456.789-01'),
('Ana Costa', 'ana@mail.com', 'abcd', '987.654.321-00'),
('Lucas Mendes', 'lucas@mail.com', 'senha', '111.222.333-44'),
('Beatriz Lima', 'bia@mail.com', '4321', '555.666.777-88'),
('Ricardo Almeida', 'ricardo.almeida@email.com', 'senha321', '678.901.234-55'),
('Laura Castro', 'laura.castro@email.com', 'abc321', '789.012.345-66'),
('Tiago Mello', 'tiago.mello@email.com', 'xyz789', '890.123.456-77'),
('Julia Rocha', 'julia@mail.com', 'pass', '999.888.777-66'),
('Fernanda Silva', 'fernanda@mail.com', 'abc123', '111.333.555-77'),
('Eduardo Santos', 'eduardo@mail.com', 'pass321', '222.444.666-88'),
('Patrícia Gomes', 'patricia@mail.com', 'xyz123', '333.555.777-99');

-- ===== ENDEREÇOS =====
INSERT INTO Endereco (Rua, Cidade, Estado, Complemento, Numero, Cliente_ID) VALUES
('Rua das Flores', 'São Paulo', 'SP', 'Apto 12', 123, 1),
('Av. Atlântica', 'Rio de Janeiro', 'RJ', NULL, 45, 2),
('Rua das Palmeiras', 'Belo Horizonte', 'MG', 'Casa 2', 78, 3),
('Rua Central', 'Curitiba', 'PR', NULL, 12, 4),
('Rua dos Pinheiros', 'São Paulo', 'SP', 'Apto 102', 210, 6),
('Av. Atlântica', 'Rio de Janeiro', 'RJ', NULL, 1500, 7),
('Rua das Palmeiras', 'Salvador', 'BA', 'Casa 3', 45, 8),
('Rua Bela Vista', 'Recife', 'PE', 'Casa 4', 87, 9),
('Av. Boa Viagem', 'Recife', 'PE', NULL, 1020, 10),
('Rua dos Coqueiros', 'Fortaleza', 'CE', 'Apto 502', 310, 11),
('Av. Brasil', 'Porto Alegre', 'RS', NULL, 55, 5);

-- ===== TELEFONES =====
INSERT INTO Telefone (Cliente_ID, Telefone, Tipo) VALUES
(1, '11999999999', 'Celular'),
(2, '21988888888', 'Residencial'),
(3, '31977777777', 'Celular'),
(4, '41966666666', 'Comercial'),
(6, '(11) 97777-2233', 'Celular'),
(7, '(21) 98888-3344', 'Celular'),
(8, '(71) 99999-4455', 'Residencial'),
(5, '51955555555', 'Celular');

-- ===== UNIDADES =====
INSERT INTO Unidade (Nome) VALUES
('Loja São Paulo'),
('Loja Rio de Janeiro'),
('Filial Salvador'),
('Filial Recife'),
('Loja Curitiba');

-- ===== FORNECEDORES =====
INSERT INTO Fornecedor (Nome, Email) VALUES
('AutoParts Ltda', 'contato@autoparts.com'),
('CarroMais Distribuidora', 'vendas@carromais.com'),
('TopMotors S.A.', 'suporte@topmotors.com');

-- ===== CONTATO FORNECEDOR =====
INSERT INTO Contato_Fornecedor (Fornecedor_ID, Telefone) VALUES
(1, 1133334444),
(2, 1144445555),
(3, 1155556666);

-- ===== FORNECIMENTOS =====
INSERT INTO Fornecimento (Veiculo_ID, Fornecedor_ID, Quantidade, Data) VALUES
(1, 1, 5, '2024-01-10'),
(2, 1, 3, '2024-03-15'),
(3, 2, 4, '2024-04-20'),
(4, 3, 2, '2024-06-05'),
(5, 2, 6, '2024-07-10');

-- ===== PEDIDOS =====
INSERT INTO Pedido (Cliente_ID, Veiculo_ID, Funcionario_ID) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 5, 1),
(4, 7, 1),
(6, 6, 5),
(7, 7, 6),
(8, 8, 5),
(5, 8, 1),
(9, 9, 1),
(10, 10, 4),
(11, 11, 1);

-- ===== PEDIDO FUNCIONÁRIO =====
INSERT INTO Pedido_Funcionario (Fornecimento_ID, Quantidade, Funcionario_id) VALUES
(1, 5, 3),
(2, 3, 3),
(3, 4, 3),
(4, 2, 3);

-- ===== ESTOQUE =====
INSERT INTO Estoque (Veiculo_ID, Unidade_ID, Quantidade, Pedido_Funcionario_ID) VALUES
(1, 1, 5, 1),
(2, 1, 3, 2),
(3, 2, 4, 3),
(4, 2, 2, 4),
(5, 3, 6, NULL),
(6, 3, 3, NULL),
(7, 1, 4, NULL),
(8, 2, 5, NULL);

-- ===== PAGAMENTOS =====
INSERT INTO Pagamento (Pedido_ID, Metodo, Valor, Data) VALUES
(1, 'Cartão de Crédito', 130000, '2024-08-01'),
(2, 'Boleto', 150000, '2024-08-05'),
(3, 'Pix', 95000, '2024-08-10'),
(4, 'Cartão de Débito', 160000, '2024-08-15'),
(6, 'Pix', 135000, '2025-05-01'),
(7, 'Cartão de Crédito', 98000, '2025-05-03'),
(8, 'Transferência Bancária', 180000, '2025-05-05'),
(5, 'Cartão de Crédito', 145000, '2024-08-20'),
(9, 'Pix', 92000, '2025-06-10'),
(10, 'Cartão de Crédito', 120000, '2025-06-12'),
(11, 'Boleto', 230000, '2025-06-15');

-- ===== ENTREGAS =====
INSERT INTO Entrega (Pedido_ID, Status, Data, Endereco_ID) VALUES
(1, 'Entregue', '2024-08-03', 1),
(2, 'Em trânsito', '2024-08-07', 2),
(3, 'Pendente', '2024-08-12', 3),
(4, 'Entregue', '2024-08-17', 4),
(6, 'Em trânsito', '2025-05-02', 6),
(7, 'Entregue', '2025-05-04', 7),
(8, 'Pendente', '2025-05-06', 8),
(5, 'Entregue', '2024-08-22', 5),
(9, 'Pendente', '2025-06-12', 9),
(10, 'Em trânsito', '2025-06-14', 10),
(11, 'Entregue', '2025-06-16', 11);
