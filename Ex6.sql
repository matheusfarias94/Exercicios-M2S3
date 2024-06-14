-- [M2S04] - Ex. 06 - Multi-Tabelas, Agregação e Agrupamento




-- Encontre o total de itens pedidos em cada mês.
select c.data_pedido,ip.quantidade
from pedidos c
inner join pedidos p on c.cliente_id = p.cliente_id
inner join itens_pedidos ip on p.pedido_id = ip.pedido_id



-- Liste os clientes que não têm pedidos associados.
select c.nome,p.data_pedido,p.pedido_id,p.valor 
from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
where p.cliente_id is null

-- Encontre o pedido de maior valor.
select c.nome,p.data_pedido,p.pedido_id,p.valor 
from clientes c
left join pedidos p on c.cliente_id = p.cliente_id
where p.valor = (
    select max(valor) from pedidos
)
-- Encontre o total de itens pedidos para cada produto.
select c.produto_id,p.quantidade
from itens_pedidos c
inner join itens_pedidos p on c.produto_id = p.produto_id


-- Calcule a soma dos valores dos pedidos para cada cliente que tenha feito mais de um pedido.
SELECT c.cliente_id,
       SUM(c.valor) AS total_valor
FROM pedidos c
WHERE c.cliente_id IN (
    SELECT cliente_id
    FROM pedidos
    GROUP BY cliente_id
    HAVING COUNT(pedido_id) > 1
)
GROUP BY c.cliente_id;



-- Encontre o preço médio dos produtos em cada categoria.


-- Encontre o cliente que fez o pedido de maior valor.