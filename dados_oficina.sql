INSERT INTO clientes (nome, dataNascimento, endereco, telefone)
VALUES
	('João Silva', '1980-01-01', 'Rua das Flores, 123', '11987654321'),
	('Maria Santos', '1990-02-02', 'Avenida Paulista, 456', '11976543210'),
	('Pedro Oliveira', '2000-03-03', 'Alameda Santos, 789', '11965432109'),
	('Ana Souza', '2010-04-04', 'Rua Augusta, 321', '11954321098'),
	('Lucas Costa', '2020-05-05', 'Avenida Brasil, 654', '11943210987'),
	('Julia Almeida', '1995-06-06', 'Rua da Consolação, 987', '11932109876'),
	('Bruno Pereira', '1985-07-07', 'Avenida Rebouças, 147', '11921098765'),
	('Carla Lima', '1975-08-08', 'Rua Oscar Freire, 258', '11910987654'),
	('Rafael Gomes', '1965-09-09', 'Avenida Faria Lima, 369', '11909876543'),
	('Fernanda Rocha', '1955-10-10', 'Alameda Campinas, 147', '11998765432');

INSERT INTO veiculos (marca, modelo, ano, idCliente)
VALUES
	('Fiat', 'Uno', 2010, 1),
	('Chevrolet', 'Onix', 2015, 2),
	('Volkswagen', 'Gol', 2020, 3),
	('Ford', 'Ka', 2005, 4),
	('Renault', 'Sandero', 2018, 5),
	('Hyundai', 'HB20', 2019, 6),
	('Toyota', 'Corolla', 2012, 7),
	('Honda','Civic' ,2014 ,8),
	('Jeep','Renegade' ,2016 ,9),
	('Nissan','Kicks' ,2017 ,10);

INSERT INTO funcionarios (nome, cargo, salario)
VALUES
	('PABLO Silva','Mecânico' ,3000.00),
	('JULIO Santos','Gerente' ,5000.00),
	('RAFA Oliveira','Atendente' ,2000.00),
	('AMANDA Souza','Recepcionista' ,2500.00),
	('JUCA Costa','Mecânica' ,3500.00),
	('Juliana Almeida','Gerente' ,5500.00),
	('JP Pereira','Atendente' ,2200.00),
	('PH Lima','Recepcionista' ,2700.00),
	('Rafaela Gomes','Mecânica' ,3300.00),
	('Fernando Rocha','Mecânico' ,3100.00);

INSERT INTO pecas (nome, descricao, preco)
VALUES
	('Pneu aro 13', 'Pneu para carros populares' ,200.00),
	('Pneu aro 14', 'Pneu para carros médios' ,250.00),
	('Pneu aro 15', 'Pneu para carros grandes' ,300.00),
	('Óleo do motor', 'Óleo para troca de óleo do motor' ,50.00),
	('Filtro de óleo', 'Filtro para troca de óleo do motor' ,30.00),
	('Filtro de ar', 'Filtro para troca de ar do motor' ,40.00),
	('Pastilha de freio', 'Pastilha para troca de freio' ,100.00),
	('Disco de freio', 'Disco para troca de freio' ,150.00),
	('Amortecedor dianteiro', 'Amortecedor dianteiro para suspensão' ,400.00),
	('Amortecedor traseiro', 'Amortecedor traseiro para suspensão' ,350.00);

INSERT INTO servicos (nome, idFuncionario, descricao, preco)
VALUES
	('Troca de óleo do motor', 6,'Troca de óleo e filtro do motor do veículo' ,100.00),
	('Troca de pastilhas de freio', 5,'Troca das pastilhas de freio do veículo' ,150.00),
	('Troca de discos de freio', 1,'Troca dos discos de freio do veículo' ,200.00),
	('Alinhamento e balanceamento', 1,'Alinhamento e balanceamento das rodas do veículo' ,80.00),
	('Revisão geral', 2,'Revisão geral do veículo' ,500.00),
	('Troca de amortecedores', 3,'Troca dos amortecedores do veículo' ,800.00),
	('Troca de correia dentada', 4,'Troca da correia dentada do motor do veículo' ,300.00),
	('Limpeza de bico injetor', 7,'Limpeza dos bicos injetores do motor do veículo' ,250.00),
	('Troca de velas', 8,'Troca das velas do motor do veículo' ,100.00),
	('Higienização do ar condicionado', 9,'Higienização do sistema de ar condicionado do veículo' ,150.00);

INSERT INTO ordens_de_servico (data, idCliente, idVeiculo, total)
VALUES
	('2023-01-01', 1, 1, 1000.00),
	('2023-02-02', 2, 2, 2000.00),
	('2023-03-03', 3, 3, 3000.00),
	('2023-04-04', 4, 4, 4000.00),
	('2023-05-05', 5, 5, 5000.00),
	('2023-06-06', 6, 6, 6000.00),
	('2023-07-07', 7, 7, 7000.00),
	('2023-08-08', 8, 8, 8000.00),
	('2023-09-09', 9, 9, 9000.00),
	('2023-10-10',10 ,10 ,10000.00);
    
INSERT INTO itens_da_ordem_de_servico (id_ordem_de_servico, id_peca_ou_servico, tipo, quantidade)
VALUES
	(1,1,'peca',4),
	(1,4,'peca',1),
	(1,5,'peca',1),
	(1,1,'servico',1),
	(2,2,'peca',4),
	(2,4,'peca',1),
	(2,5,'peca',1),
	(2,2,'servico',1),
	(3,3,'peca',4),
	(3,4,'peca',1);
