create database db_farmacia_do_bem;

use db_farmacia_do_bem;
create table tb_categoria (
id bigint auto_increment,
nome varchar(20),
tarja varchar(15),
primary key(id)
)

use db_farmacia_do_bem;
create table tb_produto(
id bigint auto_increment,
id_cat bigint(10),
tipo varchar(15),
nome varchar(20),
tamanho varchar(20),
valor bigint(10),
primary key(id),
foreign key (id_cat) references tb_categoria(id)
)


insert into tb_categoria (nome,tarja) value("perfume",null);
insert into tb_categoria (nome,tarja) value("cosmetico",null);
insert into tb_categoria (nome,tarja) value("psicotropico","preta");

insert into tb_produto (id_cat,tipo,nome,tamanho,valor) value(1,"fragrancia","Carolina","100ml",50);
insert into tb_produto (id_cat,tipo,nome,tamanho,valor) value(2,"Creme","two one two","150ml",75);
insert into tb_produto (id_cat,tipo,nome,tamanho,valor) value(3,"remedio","diasepan","50mg",30);
insert into tb_produto (id_cat,tipo,nome,tamanho,valor) value(3,"remedio","cetoprofeno","75mg",15);

select * from tb_produto where valor>50;
select * from tb_produto where valor>2 and valor<61;
select * from tb_produto where valor like 'C%';
select * from tb_produto where id_cat = 1;

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id_cat;






