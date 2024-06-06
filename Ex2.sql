-- [M2S04] - Ex. 02 - Inserção, Atualização e Exclusão de Dados


-- Inserindo dados em uma tabela existente
insert into clientes (nome,cidade,idade)
values ('LucasLima','Salvador','29');

-- Atualizando dados de uma tabela existente
update clientes set cidade = 'Fortaleza' where cliente_id = 3

-- Deletando todos os pedidos que têm valor inferior a 150.00.

delete from pedidos where valor <150;