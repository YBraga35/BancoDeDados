
/* Scripts do livro SQL Guia Prático, de ROGERIO LUIS DE CARVALHO COSTA */
create schema livrariaddl;
use livrariaddl;


CREATE TABLE Editora (
codeditora INTEGER,
nome VARCHAR(100),
CONSTRAINT PK_EDITORA PRIMARY KEY(codeditora)
);

CREATE TABLE Assunto (
sigla CHAR(1),
descricao VARCHAR(100),
CONSTRAINT PK_ASSUNTO PRIMARY KEY(sigla)
);

CREATE TABLE Livro (
codlivro INTEGER,
titulo VARCHAR(100),
preco NUMERIC(10,2),
lancamento DATE,
codeditora INTEGER,
sigla CHAR(1),
CONSTRAINT PK_LIVRO PRIMARY KEY(codlivro),
CONSTRAINT FK_EDITORA_LIVRO FOREIGN KEY(codeditora) REFERENCES Editora(codeditora),
CONSTRAINT FK_ASSUNTO_LIVRO FOREIGN KEY(sigla) REFERENCES Assunto(sigla)
);

CREATE TABLE Autor (
matricula INTEGER,
cpf INTEGER,
nome VARCHAR(100),
datanascimento DATE,
endereco VARCHAR(100),
nacionalidade VARCHAR(100),
CONSTRAINT PK_AUTOR PRIMARY KEY(matricula),
CONSTRAINT UK_AUTOR UNIQUE KEY(cpf)
);


CREATE TABLE Escreve (
matricula INTEGER,
codlivro INTEGER,
CONSTRAINT PK_ESCREVE PRIMARY KEY(matricula,codlivro),
CONSTRAINT FOREIGN KEY(matricula) REFERENCES Autor (matricula),
CONSTRAINT FOREIGN KEY(codlivro) REFERENCES Livro (codlivro) ON DELETE CASCADE
);


/*
Questão 2
Criar a tabela Autor, colocando as restrições de integridade ao lado das definições de cada coluna:
Ex:
cpf Integer _primary key_

Ocorreu um erro não permitindo o 'drop' de autor porque ele é chave estrangeira em escreve
Para funcionar corretamente, vou dar um 'drop' em Escreve para poder resolver a questão.
Então finalmente foi possível resolver a questão 2 modificando as restrições para o lado de
cada atributo em sua respectiva coluna
*/

drop table Escreve;
drop table Autor;
CREATE TABLE Autor (
matricula INTEGER PRIMARY KEY,
cpf INTEGER UNIQUE KEY,
nome VARCHAR(100),
datanascimento DATE,
endereco VARCHAR(100),
nacionalidade VARCHAR(100)
);

/*
Questão 2 concluída, porém a tabela escreve que foi deixada de lado vai ser justamente criada na próxima questão
*/



/*
Questão 3 
Essa questão pede pela criação da tabela Escreve sem restrições de integridade
Isso foi feito e nenhum erro foi apresentado, então questão concluída
*/

CREATE TABLE Escreve (
matricula INTEGER,
codlivro INTEGER
);



/*
Questão 4
Essa questão pede justamente pela adição das restrições de integridade na tabela Escreve
Algo que deve ser feito por meio dos comandos _alter_
Devendo ficar no seguinte formato:

CREATE TABLE Escreve (
	matricula INTEGER primary key,
	codlivro INTEGER primary key,
    CONSTRAINT FOREIGN KEY(matricula) REFERENCES Autor (matricula),
    CONSTRAINT FOREIGN KEY(codlivro) REFERENCES Livro (codlivro) ON DELETE CASCADE
);

Importante ressaltar que para adição de chaves é necessário dar um nome para
a adição de restrições, de forma a manter um preciosismo dentro dos comandos
*/
alter table Escreve
add constraint pk_escreve primary key (matricula, codlivro);


alter table Escreve 
add constraint FK_matricula
foreign key (matricula) references autor(matricula);

alter table Escreve 
add constraint FK_codlivro
foreign key (codlivro) references Livro(codlivro);


/*
Questão 5
Adicionar a coluna edição na tabela livro
Porém ele não especifica que tipo de atributo seria, parto do princípio 
que seja um inteiro
*/

alter table Escreve
add column Edicao INTEGER;


/*
Questão 6
Remover a coluna Edição
*/


alter table Escreve
drop column Edicao;



