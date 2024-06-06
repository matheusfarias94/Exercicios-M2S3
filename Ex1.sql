-- [M2S04] - Ex. 01 - Criação de Tabelas
-- Criando tabela categorias
create table categorias(
	id serial primary key,
	categoria_id int,
	nome_categoria varchar(50) not null	
)

-- Adicionando uma coluna a tabela produtos e criando uma chave estrangeira

alter table produtos add column categoria_id integer;
alter table produtos add foreign key (categoria_id) references categorias(categoria_id);

-- Excluindo a tabela categorias, mas não é possivel por causa da chave estrangeira.
drop table categorias