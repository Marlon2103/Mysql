create database escola;
use escola;
create table estudantes(
id bigint(2) auto_increment,
nome varchar(20) not null,
idade bigint(10) not null,
sala bigint(4) not null,
nota bigint(4) ,
professor varchar(20) not null,
primary key(id)
)

insert into estudantes (nome,idade,sala,nota,professor) Values ("Marlon",30,1,2,"Carlos")
insert into estudantes (nome,idade,sala,nota,professor) Values ("Fernando",20,1,3,"Carlos")
insert into estudantes (nome,idade,sala,nota,professor) Values ("Jussara",25,2,4,"Juliana")
insert into estudantes (nome,idade,sala,nota,professor) Values ("Alexandre",18,4,6,"Juliana")
insert into estudantes (nome,idade,sala,nota,professor) Values ("Roberto",22,5,5,"João")
insert into estudantes (nome,idade,sala,nota,professor) Values ("Julio",26,5,8,"João")
insert into estudantes (nome,idade,sala,nota,professor) Values ("Maria",23,7,9,"Sergio")

select * from estudantes where nota>7;
select * from estudantes where nota<7;


