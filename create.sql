create database if not exists clickcar;
use clickcar; 

CREATE TABLE Veiculo 
( 
 ID INT PRIMARY KEY auto_increment,  
 Marca_id INT NOT NULL,  
 Nome VARCHAR(100) NOT NULL,  
 Modelo VARCHAR(100) NOT NULL,  
 Ano INT NOT NULL,  
 Tipo VARCHAR(100) NOT NULL,  
 Preco INT NOT NULL  
); 

CREATE TABLE Marca 
( 
 ID INT PRIMARY KEY auto_increment,  
 Nome VARCHAR(100) NOT NULL  
); 

CREATE TABLE Endereco 
( 
 ID INT PRIMARY KEY auto_increment,  
 Rua varchar(100) NOT NULL,  
 Cidade varchar(100) NOT NULL,  
 Estado varchar(100) NOT NULL,  
 Complemento varchar(100),  
 Bloco varchar(100) DEFAULT 'N/D',  
 Numero INT NOT NULL,  
 Andar INT,  
 Numero_AP INT,  
 Cliente_ID INT  
); 

CREATE TABLE Cliente 
( 
 Nome VARCHAR(100) NOT NULL,  
 Email VARCHAR(200) NOT NULL,  
 ID INT PRIMARY KEY auto_increment,  
 Senha VARCHAR(100) NOT NULL,  
 CPF varchar(18) NOT NULL  
); 

CREATE TABLE Pedido 
( 
 ID INT PRIMARY KEY auto_increment,  
 Cliente_ID INT NOT NULL,  
 Veiculo_ID INT NOT NULL,  
 Funcionario_ID INT 
); 

CREATE TABLE Estoque 
( 
 ID INT PRIMARY KEY auto_increment,  
 Veiculo_ID INT NOT NULL,  
 Unidade_ID INT NOT NULL,  
 Quantidade INT NOT NULL,  
 Pedido_Funcionario_ID INT 
); 

CREATE TABLE Unidade 
( 
 ID INT PRIMARY KEY auto_increment,  
 Nome VARCHAR(100) NOT NULL  
); 

CREATE TABLE Funcionario 
( 
 ID INT PRIMARY KEY auto_increment,  
 Nome VARCHAR(100) NOT NULL,  
 Cargo_ID INT NOT NULL  
); 

CREATE TABLE Pagamento 
( 
 ID INT PRIMARY KEY auto_increment,  
 Pedido_ID INT NOT NULL,  
 Metodo VARCHAR(100) NOT NULL,  
 Valor FLOAT NOT NULL,  
 Data DATE NOT NULL  
); 

CREATE TABLE Telefone 
( 
 ID INT PRIMARY KEY auto_increment,  
 Cliente_ID INT NOT NULL,  
 Telefone varchar(100) NOT NULL,  
 Tipo VARCHAR(100) NOT NULL
); 

CREATE TABLE Entrega 
( 
 ID INT PRIMARY KEY auto_increment,  
 Pedido_ID INT NOT NULL,  
 Status VARCHAR(100) NOT NULL,  
 Data DATE NOT NULL,  
 Endereco_ID INT NOT NULL  
); 

CREATE TABLE Fornecedor 
( 
 ID INT PRIMARY KEY auto_increment,  
 Nome VARCHAR(100) NOT NULL,  
 Email VARCHAR(200) NOT NULL  
); 

CREATE TABLE Cargo 
( 
 ID INT PRIMARY KEY auto_increment,  
 Nome VARCHAR(100) NOT NULL,  
 Descricao VARCHAR(500)  
); 

CREATE TABLE Contato_Fornecedor 
( 
 ID INT PRIMARY KEY auto_increment,  
 Fornecedor_ID INT NOT NULL,  
 Telefone INT NOT NULL  
); 

CREATE TABLE Fornecimento 
( 
 ID INT PRIMARY KEY auto_increment,  
 Veiculo_ID INT NOT NULL,  
 Fornecedor_ID INT NOT NULL,  
 Quantidade INT NOT NULL,  
 Data DATE NOT NULL  
); 

CREATE TABLE Pedido_Funcionario 
( 
 ID INT PRIMARY KEY auto_increment,  
 Fornecimento_ID INT NOT NULL,  
 Quantidade INT NOT NULL,  
 Funcionario_id INT NOT NULL
); 

ALTER TABLE Veiculo ADD FOREIGN KEY(Marca_id) REFERENCES Marca (ID);
ALTER TABLE Endereco ADD FOREIGN KEY(Cliente_ID) REFERENCES Cliente (ID);
ALTER TABLE Pedido ADD FOREIGN KEY(Cliente_ID) REFERENCES Cliente (ID);
ALTER TABLE Pedido ADD FOREIGN KEY(Veiculo_ID) REFERENCES Veiculo (ID);
ALTER TABLE Pedido ADD FOREIGN KEY(Funcionario_ID) REFERENCES Funcionario (ID);
ALTER TABLE Estoque ADD FOREIGN KEY(Veiculo_ID) REFERENCES Veiculo (ID);
ALTER TABLE Estoque ADD FOREIGN KEY(Unidade_ID) REFERENCES Unidade (ID);
ALTER TABLE Estoque ADD FOREIGN KEY(Pedido_Funcionario_ID) REFERENCES Pedido_Funcionario (ID);
ALTER TABLE Funcionario ADD FOREIGN KEY(Cargo_ID) REFERENCES Cargo (ID);
ALTER TABLE Pagamento ADD FOREIGN KEY(Pedido_ID) REFERENCES Pedido (ID);
ALTER TABLE Telefone ADD FOREIGN KEY(Cliente_ID) REFERENCES Cliente (ID);
ALTER TABLE Entrega ADD FOREIGN KEY(Pedido_ID) REFERENCES Pedido (ID);
ALTER TABLE Entrega ADD FOREIGN KEY(Endereco_ID) REFERENCES Endereco (ID);
ALTER TABLE Contato_Fornecedor ADD FOREIGN KEY(Fornecedor_ID) REFERENCES Fornecedor (ID);
ALTER TABLE Fornecimento ADD FOREIGN KEY(Veiculo_ID) REFERENCES Veiculo (ID);
ALTER TABLE Fornecimento ADD FOREIGN KEY(Fornecedor_ID) REFERENCES Fornecedor (ID);
ALTER TABLE Pedido_Funcionario ADD FOREIGN KEY(Fornecimento_ID) REFERENCES Fornecimento (ID);
ALTER TABLE Pedido_Funcionario ADD FOREIGN KEY(Funcionario_id) REFERENCES Funcionario (ID);
