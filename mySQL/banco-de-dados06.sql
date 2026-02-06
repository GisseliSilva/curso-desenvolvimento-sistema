CREATE DATABASE Empresa;
USE Empresa;
CREATE TABLE cliente(
codcliente INT PRIMARY KEY,
nome VARCHAR(50),
cidade VARCHAR(50),
sexo CHAR(1),
estado CHAR(2),
estadocivil CHAR(1)
);

CREATE TABLE marca(
codmarca INT PRIMARY KEY,
marca VARCHAR(30)
);

CREATE TABLE carro(
codcarro INT PRIMARY KEY,
codmarca INT,
modelo VARCHAR(30) NOT NULL,
valor FLOAT,
FOREIGN KEY (codmarca) REFERENCES marca (codmarca)
);

CREATE TABLE aluguel(
codaluguel INT PRIMARY KEY,
codcliente INT,
codcarro INT,
data_aluguel DATE,
FOREIGN KEY (codcliente) REFERENCES cliente (codcliente),
FOREIGN KEY (codcarro) REFERENCES carro (codcarro)
);

INSERT INTO cliente (codcliente, nome, cidade, sexo, estado, estadocivil)
VALUES
(1, 'Ana Silva', 'Duque de Caxias', 'F', 'RJ', 'C'),
(2, 'Bruna Pereira', 'Niterói', 'F', 'RJ', 'C'),
(3, 'Túlio Nascimento', 'Duque de Caxias', 'M', 'RJ', 'S'),
(4, 'Fernando Souza', 'Campinas', 'M', 'SP', 'S'),
(5, 'Lúcia Andrade', 'São Paulo', 'F', 'SP', 'C');

INSERT INTO marca (codmarca, marca) VALUES
(1, 'Ford'),
(2, 'Fiat'),
(3, 'Chevrolet'),
(4, 'Volkswagen'),
(5, 'Renault');

INSERT INTO carro (codcarro, modelo, codmarca, valor) VALUES
(1, 'Ka', 1, 100.00),
(2, 'Argo', 2, 150.00),
(3, 'Onix', 3, 170.00),
(4, 'Polo', 4, 150.00),
(5, 'Kwid', 5, 120.00);

INSERT INTO aluguel (codaluguel, codcliente, codcarro, data_aluguel)VALUES
(1, 3, 2, '2023-04-01'),
(2, 2, 1, '2023-04-02'),
(3, 2, 1, '2023-04-03'),
(4, 2, 3, '2023-04-04'),
(5, 1, 4, '2023-04-05'),
(6, 1, 4, '2023-04-13'),
(7, 1, 1, '2023-04-15'),
(8, 5, 2, '2023-04-19'),
(9, 5, 2, '2023-04-21'),
(10,3, 1, '2023-04-25');

SELECT nome, cidade FROM cliente WHERE cidade= 'São Paulo';
/*Clausula WHERE é usada para filtrar os registros retornado 
por uma consulta SELECT, UPDATE, ou DELETE. ela define condições 
que os dados devem satisfazer para serem incluídos no resultado*/

/*SELECT colunas1, coluna2,...
FROM nome_da_tabela
WHERE condição;*/
/*liste todos os clientes do estado do RJ*/

SELECT nome, cidade FROM cliente WHERE estado= 'RJ';

/*Exiba os carros com valor superiores a 120 reais*/
SELECT modelo,valor FROM carro WHERE valor > 120; 

/*mostre os clientes do sexo feminino*/
SELECT nome FROM cliente WHERE sexo= 'F';

 /* liste as marcas com código 3 */
 SELECT marca, codmarca FROM marca
 WHERE codmarca=3;
 
 /* mostre todos os clientes que moram em duque de caxias*/
 SELECT nome FROM cliente WHERE cidade= 'Duque de Caxias';
 
 /*exiba os códigos de aluguéis realizados no dia '2023-04-02'*/
  SELECT codaluguel,data_aluguel FROM aluguel WHERE data_aluguel= '2023-04-02';  
  
  /*mostre os clientes cujo estado civil é solteiro (s)*/
   SELECT nome FROM cliente WHERE estadocivil= 'S';
   
/*liste os carros cujo valor é igual a 150 reais*/
SELECT modelo, valor FROM carro WHERE valor= 150;

/*exiba os aluguéis feitos pelo cliente de código 1*/
SELECT codaluguel,codcliente FROM aluguel WHERE  codcliente= 1;

/*mostre todos os carros que não são do modelo 'ka'*/
SELECT modelo FROM carro  WHERE  modelo <> 'ka';
   
   