CREATE DATABASE oficina;
USE oficina;

CREATE TABLE IF NOT EXISTS clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone CHAR(11)
);

CREATE TABLE IF NOT EXISTS veiculos (
    idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(255) NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    ano INT NOT NULL,
    idCliente INT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);

CREATE TABLE IF NOT EXISTS funcionarios (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS pecas (
    idPeca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS servicos (
    idServico INT AUTO_INCREMENT PRIMARY KEY,
    idFuncionario INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL,
    FOREIGN KEY (idFuncionario) REFERENCES funcionarios(idFuncionario)
);

CREATE TABLE IF NOT EXISTS ordens_de_servico (
    id_ordem_de_servico INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    idCliente INT NOT NULL,
    idVeiculo INT NOT NULL,
    total FLOAT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente),
    FOREIGN KEY (idVeiculo) REFERENCES veiculos(idVeiculo)
);

CREATE TABLE itens_da_ordem_de_servico (
    id_item_da_ordem_de_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_ordem_de_servico INT NOT NULL,
    id_peca_ou_servico INT NOT NULL,
    tipo ENUM('peca', 'servico') NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_ordem_de_servico) REFERENCES ordens_de_servico(id_ordem_de_servico)
);
