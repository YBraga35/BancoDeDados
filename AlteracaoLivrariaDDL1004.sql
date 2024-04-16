

/*
 1 -
 Popular a tabela Assunto
*/

insert into Assunto
(sigla, descricao) values
('B','BANCO DE DADOS'),
('P','PROGRAMACAO'),
('R','REDES'),
('S','SISTEMAS OPERACIONAIS');

/*
Tabela assunto populada conforme especificacao da imagem
*/

/*
2 -
Popular a tabela Editora
*/

insert into Editora
(codeditora, nome) values
(1,'MIRANDELA EDITORA'),
(2,'EDITORA VIA-NORTE'),
(3,'EDITORA ILHAS TIJUCA'),
(4,'MARIA JOSÉ EDITORA');

/*
3 -
Executar comandos expecificados
*/

INSERT INTO Livro(codlivro, titulo, preco, lancamento, sigla,
codeditora)
VALUES(1, 'BANCO DE DADOS PARA WEB', 31.20, '1999-01-10', 'B', 1);

INSERT INTO Livro(codlivro, titulo, preco, lancamento, sigla,
codeditora)
VALUES(2, 'PROGRAMANDO EM LINGUAGEM C', 30.00, '1997-10-01', 'P',
1);
INSERT INTO Livro(codlivro, titulo, preco, lancamento, sigla,
codeditora)
VALUES(3, 'PROGRAMANDO EM LINGUAGEM C++', 111.50, '1998-11-01', 'P',
3);
INSERT INTO Livro(codlivro, titulo, preco, lancamento, sigla,
codeditora)
VALUES(4, 'BANCO DE DADOS NA BIOINFORMÁTICA', 48.00, NULL, 'B', 2);
INSERT INTO Livro(codlivro, titulo, preco, lancamento, sigla,
codeditora)
VALUES(5, 'REDES DE COMPUTADORES', 42.00, '1996-09-01', 'R', 2);
INSERT INTO Livro(codlivro, titulo, preco, lancamento, sigla,
codeditora)
VALUES(6, 'BANCOS DE DADOS DISTRIBUÍDOS', 32.00, '1998-09-09', 'B',
1);

INSERT INTO Autor(matricula, cpf, nome, datanascimento, endereco,
nacionalidade)
VALUES(111, 80734566, 'Mario da Silva', '1965-10-10', 'Avenida
Ipiranga, 456 - Rio Grande do Sul', 'Brasileira');
INSERT INTO Autor(matricula, cpf, nome, datanascimento, endereco,
nacionalidade)
VALUES(222, 90534586, 'Alberto Alencar', '1957-02-23', 'Rua Salgado
Leite, 245 - Rio de Janeiro', 'Brasileira');
INSERT INTO Autor(matricula, cpf, nome, datanascimento, endereco,
nacionalidade)
VALUES(333, 70734466, 'Francisco João Peixoto', '1992-12-11', 'Rua
Annes Dias, 444 - Rio Grande do Sul', 'Brasileira');
INSERT INTO Autor(matricula, cpf, nome, datanascimento, endereco,
nacionalidade)
VALUES(444, 77765444, 'Pedro Silveira', '1991-01-10', 'Rua Annes
Dias, 448 - Rio Grande do Sul', 'Portuguesa');

INSERT INTO Escreve(matricula, codlivro)
VALUES(111, 1);
INSERT INTO Escreve(matricula, codlivro)
VALUES(111, 6);
INSERT INTO Escreve(matricula, codlivro)
VALUES(111, 4);
INSERT INTO Escreve(matricula, codlivro)
VALUES(222, 1);

INSERT INTO Escreve(matricula, codlivro)
VALUES(333, 2);
INSERT INTO Escreve(matricula, codlivro)
VALUES(333, 3);
INSERT INTO Escreve(matricula, codlivro)
VALUES(444, 5);



/*
4 -
Montar um comando atualizando o título do Código 3 para "Programação e Banco de Dados"
*/

update Livro set
	titulo = 'Programação e Banco de Dados'
    where codlivro = 3;


/*
5 -
Montar um comando para excluir livros acima do
codlivro 2 e valor maior que 50
*/

delete from Livro 
		where (codlivro > 2 AND preco > 50);
        
        
/*
6-
Atualizar para 0 o valor de todos os livros
com data de lançamento nula ou preco menor
que 50
*/

update Livro set
	preco = 0
    where (lancamento = null OR preco < 50);








