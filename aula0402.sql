create schema aula0402;
use aula0402;

CREATE TABLE departamento (

dnome char(20) not null,
dnumero numeric(1) not null primary key,
cpf_gerente numeric(9) not null,
datainiciogerente date not null,
unique (dnome)
);

create table funcionario (
pnome char(10) not null,
unome char(20) not null,
cpf numeric(9) not null,
datanascimento date not null,
endereco char(30) not null,
salario numeric(5) not null,
cpfsupervisor numeric(9),
dnumero numeric(1) not null,
primary key (cpf),
foreign key (dnumero) references departamento(dnumero)
);

