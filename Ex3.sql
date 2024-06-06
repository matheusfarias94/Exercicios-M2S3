-- [M2S04] - Ex. 03 - Consultas Simples

-- Selecionando clientes que moram em determinada cidade
select * from clientes where cidade = 'São Paulo';

-- listando data de pedidos ordenados em ordem decrescente
select * from pedidos order by data_pedido desc;

-- Selecionando clientes com uma faixa de idade
select * from clientes where idade between '25'and '35';