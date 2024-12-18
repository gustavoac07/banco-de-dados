CREATE DATABASE carros;

USE carros;

-- Tabela clientes
CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL, 
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabela marcas
CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
    nome_carro VARCHAR (255) NOT NULL,
    origem VARCHAR (255),
    clientes_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (clientes_id) REFERENCES clientes (id)
);

-- Tabela inventario
CREATE TABLE inventario (
	cd INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (cd),
    FOREIGN KEY (marcas_id) REFERENCES marcas (id)
);

-- Inserção na tabela clientes
INSERT INTO clientes (nome, sobrenome, endereco) VALUES
('Andre', 'Iacono', 'Rua 1'),
('Cristiano', 'Ronaldo', 'Rua 2'),
('Gustavo', 'Carvalho', 'Rua 3'),
('Janiele', 'Silva', 'Rua 4'),
('Joao', 'Guilherme', 'Rua 5');

-- Inserção na tabela marcas
INSERT INTO marcas (nome_carro, origem, clientes_id) VALUES
('Fiat', 'Italia', 1),
('Volkswagen', 'Alemanha', 2),
('Audi', 'Alemanha', 3),
('Aston Martin', 'Inglaterra', 4),
('Chevrolet', 'EUA', 5);

-- Inserção na tabela inventario
INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id) VALUES	
('Mobi', 'Manual', '1.0', 'Flex', 1),
('Gol', 'Manual', '1.6', 'Flex', 2),
('Q3', 'Automatico', '2.6', 'Diesel', 3),
('Martin', 'Automatico', '1.8', 'Gasolina', 4),
('Equinox', 'Automatico', '3.0', 'Diesel', 5);
