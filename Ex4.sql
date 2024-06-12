-- [M2S04] - Ex. 04 - Consultas com Filtros e Agrupamentos



-- Encontrndo todos os clientes cujo nome começa com a letra 'A'.
select * from clientes where nome like 'A%';

-- Calculando o valor total de pedidos para cada cliente.
select c.nome,p.data_pedido,p.pedido_id,p.valor 
from clientes c
inner join pedidos p on c.cliente_id = p.cliente_id



-- Encontrando a média de idade dos clientes em cada cidade.
select AVG(idade) from clientes