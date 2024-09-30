/* Exclui o banco de dados "tipos_juncao", caso o banco de dados exista */
drop database if exists tipos_juncao;

/* Cria o banco de dados "tipos_juncao" */
create database tipos_juncao;

/* Define o banco de dados "tipos_juncao" como o banco de dados atual */
use tipos_juncao;

/* Cria a tabela "tabelaA" */
create table tabela_A(
	nome varchar(40)
);

/* Cria a tabela "tabelaB" */
create table tabela_B(
	nome varchar(40)
);

/* Insere registros na "tabelaA" */
insert into tabela_A
(nome)
values
('Fernanda'),
('José'),
('Luiz'),
('Fernando');

/* Mostra os registros da "tabelaA" */
select * from tabela_A;

/* Insere registros na "tabelaB" */
insert into tabela_B
(nome)
values
('Carlos'),
('Manoel'),
('Luiz'),
('Fernando');


drop table tabela_B;
/* Mostra os registros da "tabelaB" */
select * from tabela_B;

/* JOIN (ou INNER JOIN): é o método de junção mais conhecido e retorna os registros que são comuns às duas tabelas */
select tabela_A.nome, tabela_B.nome
from tabela_A inner join tabela_B
on tabela_A.nome = tabela_B.nome;

select tabela_A.nome, tabela_B.nome
from tabela_A, table_B
Where tabela_A.nome = table_B.nome; 

/* Uso de apelidos para as tabelas */
select A.nome, B.nome
from tabela_A as A inner join tabela_B as B
on A.nome = B.nome;

select * from A;
create table A;
/*testar conflito de tableas logo após a aula*/

/* Caso o nome do campo de ligação tenha o mesmo nome em ambas as tabelas, poderá ser usado a cláscula USING
no lugar da cláusla ON */
select A.nome, B.nome
from tabela_A as A inner join tabela_B as B
using(nome);


/* LEFT JOIN: retorna todos os registros que estão na tabela A (mesmo que não estejam na tabela B)
e os registros da tabela B que são comuns à tabela A */
select tabela_a.nome, tabela_b.nome
from tabela_a left join tabela_b
on tabela_a.nome = tabela_b.nome;


/* RIGHT JOIN: retorna todos os registros que estão na tabela B (mesmo que não estejam na tabela A)
e os registros da tabela A que são comuns à tabela B */
select tabela_a.nome, tabela_b.nome
from tabela_a right join tabela_b
on tabela_a.nome = tabela_b.nome;


/* LEFT EXCLUDING JOIN: retorna todos os registros que estão na tabela A e que não estejam na tabela B */
select tabela_a.nome, tabela_b.nome
from tabela_a left join tabela_b
on tabela_a.nome = tabela_b.nome
where tabela_b.nome is null;

/* RIGHT EXCLUDING JOIN: retorna todos os registros que estão na tabela B e que não estejam na tabela A */
select tabela_a.nome, tabela_b.nome
from tabela_a right join tabela_b
on tabela_a.nome = tabela_b.nome
where tabela_a.nome is null;
