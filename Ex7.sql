-- [M2S04] - Ex. 07 - Consultas com Funções Agregadas e Subconsultas



-- Função Agregada: Encontre a média de idade dos clientes que têm pedidos com valor total superior a 300,00.

select avg (p.idade) as media_idade_pedidos_maior_300
from pedidos c
inner join clientes p on c.cliente_id = p.cliente_id
where c.valor >300

-- Subconsulta: Liste todos os produtos que foram pedidos mais de uma vez.
SELECT ip.produto_id, ip.pedido_id
FROM itens_pedidos ip
JOIN (
    SELECT produto_id
    FROM itens_pedidos
    GROUP BY produto_id
    HAVING COUNT(*) > 1
) sub ON ip.produto_id = sub.produto_id;