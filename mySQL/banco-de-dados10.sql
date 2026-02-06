-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Criar tabela autores
CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL
);

-- Criar tabela livros
CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor_id INT,
    CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES autores(id_autor)
);

-- Inserir dados na tabela autores
INSERT INTO autores (nome_autor) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('Jorge Amado');

-- Inserir dados na tabela livros
INSERT INTO livros (titulo, autor_id) VALUES
('Dom Casmurro', 1),
('A Hora da Estrela', 2),
('Gabriela, Cravo e Canela', 3),
('Memórias Póstumas de Brás Cubas', 1);

SELECT * FROM autores;
SELECT * FROM livros;

/* exiba os livros com os nomes dos sutores correspondentes*/
SELECT livros.titulo, autores.nome_autor 
FROM livros 
INNER JOIN autores ON livros.autor_id = autores.id_autor;

INSERT INTO livros (titulo, autor_id) VALUES
('Divergente', NULL);

/*exiba todos os livros, mostrando o autor quando houver, ou NULL quano não houver autor*/
SELECT livros.titulo, autores.nome_autor 
FROM livros 
LEFT JOIN autores ON livros.autor_id = autores.id_autor;

INSERT INTO autores (nome_autor) VALUES
('Clarice Lispector');

/*LEFT JOIN: retorna todas as linhas da tabela à esquerda e as correspondência da tabela 
da direita. quando não tem correspondência, mostra NULL*/

/*RIGHT JOIN: retorna todas as linhas da tabela à direita e as correspondência da tabela 
da esquerda. quando não tem correspondência, mostra NULL*/

/* exiba todos os autores, com seus livros correspondentes ou NULL caso não tenha 
livros cadastrados*/

SELECT autores.nome_autor, livros.titulo
FROM autores
LEFT JOIN livros ON livros.autor_id = autores.id_autor;

/*liste todos os livros com seus autores em ordem alfabética pelo título do livro*/
SELECT livros.titulo, autores.nome_autor 
FROM livros 
INNER JOIN autores ON livros.autor_id = autores.id_autor
ORDER BY livros.titulo ASC;

/* liste todos os autores e a quantidade de livros que cada um possui*/
SELECT autores.nome_autor, COUNT(livros.titulo) AS total_livros
FROM autores
LEFT JOIN livros ON livros.autor_id = autores.id_autor
GROUP BY  autores.nome_autor
HAVING COUNT(livros.titulo) >0;

/*liste todos os atores que não possuem nenhum livro cadastro*/
SELECT autores.nome_autor
FROM autores 
LEFT JOIN livros ON autores.id_autor = livros.autor_id
WHERE livros.id_livro IS NULL;

/*buscar os títulos dos livros que foram escritos por machado de assis*/
SELECT livros.titulo
FROM livros
INNER JOIN autores ON autores.id_autor = livros.autor_id
WHERE livros.autor_id = '1';

/*exibir o total de livros na tabela*/
SELECT COUNT(*) AS total_livros FROM livros;

/*listar autores e seus livros, ordenados pelo nome do autor e depois pelo título do livro*/
SELECT livros.titulo, autores.nome_autor 
FROM autores
INNER JOIN livros ON livros.autor_id = autores.id_autor
ORDER BY autores.nome_autor, livros.titulo ASC;

/* TRUNCATE: remove todas as linhas da tabela, mantendo a estrutura dela*/
SELECT COUNT(*) AS total_livros_antes FROM livros;
TRUNCATE TABLE livros;
SELECT * FROM livros;

/*RENOMEAR: RENAME*/
RENAME TABLE obras TO livros;

/*ALTER TABLE livros RENAME COLUMN titulo TO nome_titulo;*/

/* DCL: Linguagem de controle de dados (Data Control Language): gerencia permissões
de acesso ao banco de dados 
GRANT: CONCEDER ACESSO
REVOKE: REVOGAR O ACESSO*/

/* TCL: Transaction Control Languege(linguagem de controle de transação)
Transação: operação de que deve ser executada para garantir a integridade e a consistência 
dos dados
COMMIT: Gravar permanentemente todas as alteração de transação.Após o commit as alterações não 
pode ser desfeitas

ROLLBACK: desfaz as alterações feitas desde o início da transação ou desde o último
savepoint, retornando o banco ao estado anterior 

SAVEPOINT: criar um ponto intermediário de uma transação para que seja possível 
reverter parcialmente as operações até aquele determinado ponto, sem desfazer toda
a transação 
*/

START TRANSACTION;
INSERT INTO livros(nome_titulo, autor_id) VALUES ('NOVO LIVRO', 2);

SAVEPOINT antes_update;
UPDATE livros SET nome_titulo = 'Livro Atualizado' WHERE id_livro = 1;

/*se algo deu errado, voltamos ao savepoint*/

ROLLBACK TO SAVEPOINT antes_update; 

/* SELECT coluna1, coluna2,...
FROM tabela
WHERE condição
GROUP BY coluna
HAVING condição_agrupamento
ORDER BY coluna ASC|desc
LIMIT número*/



