drop schema livraria0304;
create schema livraria0304;
use livraria0304;

create table Assunto(
	Sigla char(1) primary key,
    Descricao varchar (100)
);

create table Editora(
	CodEditora integer(10),
    Nome varchar (100),
    primary key(CodEditora)
);

create table Autor(
	Matricula integer(10),
    Nome varchar (100),
    Endereco varchar (100),
    Nacionalidade varchar (100),
    CPF integer (11),
	DataNascimento date,
    primary key(Matricula)
);

create table Livro(
	CodLivro integer(10) not null primary key,
    Titulo varchar (100) not null,
    Lancamento date not null,
    Preco numeric (10,2) not null,
    CodEditora integer (10),
    Assun char(1),
    foreign key (CodEditora) references Editora (CodEditora),
    foreign key (Assun) references Assunto (Sigla)
);

create table Escreve(
	MatAutor integer(10),
    CodLivro integer(10),
    foreign key (MatAutor) references Autor(Matricula),
    foreign key (CodLivro) references Livro(CodLivro)
);







