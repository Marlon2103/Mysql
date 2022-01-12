create database db_rh;
use db_rh;
create table rh_funcionarios(
id bigint(2) auto_increment,
nome varchar(50) not null,
cpf bigint(30) not null,
cep bigint(30)not null,
estado varchar(20)not null,
salario decimal(6,2),
primary key(id)
);

insert into rh_funcionarios (nome,cpf,cep,estado,salario) values ("Marlon",445653,093520,"Sao Paulo","2.000")
insert into rh_funcionarios (nome,cpf,cep,estado,salario) values ("Jose",442253,093306,"Minas Gerais","3.000")
insert into rh_funcionarios (nome,cpf,cep,estado,salario) values ("Maria",555653,082520,"Sao Paulo","4.000")
insert into rh_funcionarios (nome,cpf,cep,estado,salario) values ("Mariana",547853,036520,"Santa Catarina","1.500")
insert into rh_funcionarios (nome,cpf,cep,estado,salario) values ("Roberto",785653,053520,"Rio de Janeiro","1.000")

select * from rh_funcionarios where salario>2.000;
select * from rh_funcionarios where salario<2.000;



