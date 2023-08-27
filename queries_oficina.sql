SHOW TABLES;

SELECT *
FROM clientes;

SELECT *
FROM funcionarios;

SELECT *
FROM itens_da_ordem_de_servico;

SELECT *
FROM ordens_de_servico;

SELECT *
FROM pecas;

SELECT *
FROM servicos;

SELECT *
FROM veiculos;

SELECT c.nome, v.marca, v.modelo, v.marca, v.ano
FROM clientes c
LEFT JOIN veiculos v
ON c.idCliente = v.idCliente;


-- left join
SELECT c.nome, v.marca, v.modelo, v.marca, v.ano, o.data AS data_entrada, o.total
FROM clientes c
LEFT JOIN veiculos v
ON c.idCliente = v.idCliente
LEFT JOIN ordens_de_servico o
ON o.idCliente = c.idCliente
AND o.idVeiculo = v.idVeiculo
WHERE v.ano < 2018;

SELECT * 
FROM clientes c 
LEFT JOIN veiculos v
ON c.idCliente = v.idCliente;

SELECT *
FROM itens_da_ordem_de_servico i
LEFT JOIN ordens_de_servico o
ON i.id_ordem_de_servico = o.id_ordem_de_servico
WHERE i.tipo = 'peca';

-- calculando preco quanto o tipo for serviço cbranod 30* pela mão de obra
SELECT i.tipo, i.quantidade, (30 * s.preco) AS PrecoFinal, o.data AS dataDeConclusao, v.marca, v.modelo, c.nome as Cliente, f.nome AS Mecanico
FROM itens_da_ordem_de_servico i
LEFT JOIN ordens_de_servico o
ON i.id_ordem_de_servico = o.id_ordem_de_servico
LEFT JOIN servicos s
ON i.id_peca_ou_servico = s.idServico
LEFT JOIN funcionarios f
ON f.idFuncionario = i.id_ordem_de_servico
LEFT JOIN clientes c
ON c.idCliente = o.idCliente
LEFT JOIN veiculos v
ON o.idVeiculo = v.idVeiculo
WHERE i.tipo = 'servico';

-- calculando preco quando for peca multiplicando o valor
SELECT i.tipo, i.quantidade, (i.quantidade * s.preco) AS PrecoFinal, o.data AS dataDeConclusao, v.marca, v.modelo, c.nome 
FROM itens_da_ordem_de_servico i
LEFT JOIN ordens_de_servico o
ON i.id_ordem_de_servico = o.id_ordem_de_servico
LEFT JOIN servicos s
ON i.id_peca_ou_servico = s.idServico
INNER JOIN clientes c
ON c.idCliente = o.idCliente
INNER JOIN veiculos v
ON o.idVeiculo = v.idVeiculo
WHERE i.tipo = 'peca';

-- deletando registro
DELETE FROM clientes
WHERE id = 5;

-- aumentando 50% do valor toal com updade
UPDATE ordens_de_servico
SET total = total * 1.5
WHERE idCliente < 3;
