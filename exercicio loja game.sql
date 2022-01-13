create database db_generation_game_online 


use db_generation_game_online;
create table tb_personagem(
id_per bigint auto_increment,
id_class bigint(10) ,
nome varchar(30) not null,
defesa bigint(20) not null,
poder bigint(20) not null,
idade bigint(3) ,
primary key(id_per),
foreign key (id_class) references tb_classe(id)
)

use db_generation_game_online;
create table tb_classe(
id bigint auto_increment,
genero varchar(20),
produtora varchar(20),
valor decimal,
primary key(id)
)

insert into tb_classe(genero,produtora,valor) values("Ação","Microsoft","100.00");
insert into tb_classe(genero,produtora,valor) values("Ação","Microsoft","200.00");
insert into tb_classe(genero,produtora,valor) values("Aventura","Epic Games","150.00");
insert into tb_classe(genero,produtora,valor) values("Aventura","Eletronic Arts","300.00");
insert into tb_classe(genero,produtora,valor) values("Terror","Tencent","120.00");

Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(1,"God of war",2000,2000,18);
Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(2,"Last of us",1000,1500,15);
Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(3,"Gta",500,3000,null);
Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(4,"Sonic",1500,4000,10);
Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(5,"The witcher",5000,3500,null);
Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(6,"Horizon",2000,800,18);
Insert into tb_personagem(id_class,nome,defesa,poder,idade) values(7,"Resident evil",1000,5000,20);


select * from tb_personagem where defesa>2000;
select*from tb_personagem where defesa>1000 and defesa<2000;
select * from  tb_personagem where  nome like 'S%';

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.id_class;


drop table tb_personagem



