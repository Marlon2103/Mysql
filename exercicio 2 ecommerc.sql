create database e_commerc;

use e_commerc;
create table produtos(
id bigint(2) auto_increment,
nome varchar(15),
tipo varchar(15),
validade date,
valor decimal(6,3),
primary key(id)
)
alter table produtos modify valor decimal(6,2)
update produtos set validade = null where id = 1
select * from produtos
insert into produtos (nome,tipo,validade,valor) values ("Nike shox","Tennis",null,"150.00")
insert into produtos (nome,tipo,validade,valor) values ("Bluzão","Blusa frio","2040-12-30","500.00")
insert into produtos (nome,tipo,validade,valor) values ("Boné Nike","Bonés","2035-12-20","100.00")
insert into produtos (nome,tipo,validade,valor) values ("Blusa red","Blusas","2035-12-20","300.00")
insert into produtos (nome,tipo,validade,valor) values ("Nike Air","Tennis",null,"800.00")
insert into produtos (nome,tipo,validade,valor) values ("Pingente Classico","ACessorio",null,"50.00")

select * from produtos where valor>500
select * from produtos where valor<500

