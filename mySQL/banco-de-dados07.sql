/*COUNT, SUM, AVG, INT E MAX*/
/* COUNT(*) : CONTA QUANTOS EXISTEM*/
SELECT COUNT(*) AS total_cliente FROM cliente; 

/*AVG: AVERAGE - MÉDIA*/
SELECT AVG(valor) AS media_valor_carro FROM carro;
 
 /*MIN: MÍNIMO*/
 /*menor valor de aluguel de carro disponíveis*/
SELECT MIN(valor)  AS menor_valor_carro FROM carro;

/*MAX: MÁXIMO*/
/*maior valor de aluguel de carro disponíveis*/
SELECT MAX(valor) AS maior_valor_carro FROM carro;

/* SUM: soma*/
SELECT SUM(valor) AS soma_valor_carros FROM carro;

/*WHERE X HAVING*/
/*WHERE: filtrar linhas individuais antes da agregação
HAVING: filtrar grupos após a agregação*/
/*agregação: uso de funções para cálcular em um conjunto de valores 
de uma coluna, retornando um único valor resumido*/

/*NOME_TABELA AS APELIDO_TABELA*/
/*mostrar clientes que fizeram mais de 2 aluguéis*/
SELECT cliente.nome, COUNT(codaluguel) AS total_alugueis
FROM cliente
JOIN aluguel ON cliente.codcliente = aluguel.codcliente 
GROUP BY CLIENTE.NOME 
HAVING COUNT(aluguel.codaluguel) >2;

/* JOIN: junta as tabelas 
GROUP BY: agrupar os resultados por uma ou mais tabelas*/

/*mostrar marcas que possuem mais de 1 carro cadastrado*/

SELECT marca.marca, COUNT(carro.codcarro) AS total_carros
FROM marca
JOIN carro ON marca.codmarca = carro.codmarca
GROUP BY marca.marca
HAVING COUNT(carro.codcarro) = 1;

/*EXERCICIOS*/
/*1. Conte quantos clientes existem na tabela cliente.*/
SELECT COUNT(*) AS total_cliente FROM cliente; 

/*2. Liste o nome dos clientes e a quantidade total de aluguéis 
que cada um fez.*/
SELECT cliente.nome, COUNT(codaluguel) AS total_alugueis
FROM cliente
JOIN aluguel ON cliente.codcliente = aluguel.codcliente 
GROUP BY CLIENTE.NOME 
HAVING COUNT(aluguel.codaluguel);


/*3. Mostre o total gasto por cada cliente, considerando o valor dos carros 
alugados.*/
SELECT cliente.nome, SUM(carro.valor) AS total_gasto
FROM cliente 
JOIN aluguel ON cliente.codcliente = aluguel.codcliente
JOIN carro ON aluguel.codcarro = carro.codcarro
GROUP BY cliente.nome; 

/*4. Exiba a média do valor dos carros disponíveis na tabela carro.*/
SELECT AVG(valor) AS media_valor_aluguel FROM carro;

/*5. Encontre o menor e o maior valor dos carros cadastrados.*/
SELECT
	MIN(valor) AS minimo_valor,
    MAX(valor) AS maior_valor
FROM Carro;

/*6. Liste as marcas que possuem mais de um carro cadastrado.*/

SELECT marca.marca, COUNT(carro.codcarro) AS total_carro 
FROM marca
JOIN carro ON marca.codmarca = carro.codmarca
GROUP BY marca.marca
HAVING COUNT(carro.codcarro) >1;

SELECT * FROM carro;
SELECT * FROM marca;

/*7. Mostre os clientes que fizeram mais de 2 aluguéis.*/
/*CLIENTE E ALUGUEL: PRECISO USAR JOIN */

SELECT cliente.nome, COUNT(aluguel.codaluguel) AS total_alugueis 
FROM cliente 
JOIN aluguel ON cliente.codcliente = aluguel.codcliente 
GROUP BY cliente.nome 
HAVING COUNT(aluguel.codaluguel) >2;

/*8. Exiba as marcas e a soma total do valor dos seus carros.*/

SELECT marca.marca, SUM(carro.valor) AS soma_carros 
FROM marca
JOIN carro ON marca.codmarca = carro.codmarca
GROUP BY marca.marca;

/*9. Liste os clientes que gastaram mais de R$ 300 no total de aluguéis.*/

SELECT cliente.nome, SUM(carro.valor) AS total_gasto 
FROM cliente 
JOIN aluguel ON cliente.codcliente = aluguel.codcliente 
JOIN carro ON aluguel.codcarro = carro.codcarro 
GROUP BY cliente.nome 
HAVING SUM(carro.valor) >300;


/*10. Mostre as cidades e a quantidade de clientes que moram em cada uma, 
exibindo apenas as cidades com mais de 1 cliente.*/
SELECT cidade, COUNT(*) AS quantidade_clientes 
FROM cliente 
GROUP BY cidade
HAVING COUNT(*) >1;

 



  
 