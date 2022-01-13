create database  db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categoria(
id bigint auto_increment,
nome varchar(20),
tipo varchar(20),
embalagem varchar(20),
primary key(id)
)

use db_pizzaria_legal;
create table tb_pizza(
id bigint auto_increment,
id_cat bigint(20),
nome varchar(20),
preço bigint(20),
borda varchar(20),
primary key(id),
foreign key (id_cat) references tb_categoria(id)
)

insert into tb_categoria(nome,tipo,embalagem) values ("italiana","grande","papelão");
insert into tb_categoria(nome,tipo,embalagem) values ("brasileiro","grande","papelão");
insert into tb_categoria(nome,tipo,embalagem) values ("frança","grande","papelão");
insert into tb_categoria(nome,tipo,embalagem) values ("italiana","media","papelão");
insert into tb_categoria(nome,tipo,embalagem) values ("brasileiro","media","papelão");
insert into tb_categoria(nome,tipo,embalagem) values ("frança","media","papelão");

insert into tb_pizza(id_cat,nome,preço,borda) values (1,"italiana",27,"normal");
insert into tb_pizza(id_cat,nome,preço,borda) values (2,"brasileiro",38,"normal");
insert into tb_pizza(id_cat,nome,preço,borda) values (3,"portuguesa",22,"normal");
insert into tb_pizza(id_cat,nome,preço,borda) values (4,"calabreza",35,"vulcao");
insert into tb_pizza(id_cat,nome,preço,borda) values (5,"baiana",50,"vulcao");
insert into tb_pizza(id_cat,nome,preço,borda) values (6,"francesa",32,"normal");

select * from tb_pizza where valor>45;
select * from tb_pizza where valor>45 and valor<61;
select * from tb_pizza where preço like 'c%';

select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.id_cat;
