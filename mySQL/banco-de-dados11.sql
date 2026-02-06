CREATE DATABASE Mundo;
USE Mundo;

CREATE TABLE Pais (
id_pais INT AUTO_INCREMENT PRIMARY KEY,
nome_pais VARCHAR (35) NOT NULL,
Continente VARCHAR(35) NOT NULL,
Pop REAL NOT NULL,
PIB REAL NOT NULL,
Expec_vida REAL
);

INSERT INTO Pais(nome_pais, Continente, Pop, PIB, Expec_vida)
VALUES

('Canada','Am. Norte','30.1','658','77.08'),
('Mexico','Am. Norte','107.5','694','69.1'),
('Brasil','Am. Sul','183.3','10004','65.2'),
('USA','Am. Norte','270.0','8003','75.5');

CREATE TABLE Cidade(
id_cidade INT PRIMARY KEY AUTO_INCREMENT, 
nome_cidade VARCHAR (35) NOT NULL, 
Pais VARCHAR(35) NOT NULL, 
Pop real NOT NULL, 
Capital VARCHAR (1) NOT NULL

);

INSERT INTO Cidade(nome_cidade, Pais, Pop, Capital)
VALUES
('Washington','USA','3.3','S'),
('Monterrey','Mexico','2.0','N'),
('Brasília','Brasil','1.5','S'),
('São Paulo','Brasil','15.0','N'),
('Ottawa','Canada','0.8','S'),
('Cid. Mexico','Mexico','14.1','S');


CREATE TABLE Rio(
id_rio INT PRIMARY KEY AUTO_INCREMENT,
nome_rio VARCHAR(35) NOT NULL, 
nascente VARCHAR (100) NOT NULL,
origem VARCHAR(35) NOT NULL, 
comprimento INTEGER NOT NULL
);

INSERT INTO Rio(nome_rio, nascente, origem, comprimento)
VALUES
('St. Lawrence','USA','USA','3.3'),
('Grande','USA','Mexico','2.0'),
('Parana','Brasil','Brasil','1.5'),
('Mississipi','USA','USA','15.0');


/*1. Liste todas as cidades e os países aos quais pertencem.*/
SELECT Cidade.nome_cidade, Cidade.Pais
FROM Cidade
LEFT JOIN Pais ON Pais.id_pais = Cidade.id_cidade;

/*2. Liste todas as cidades que são capitais.*/
SELECT Cidade.nome_cidade, Cidade.Capital
FROM Cidade
LEFT JOIN Pais ON Pais.id_pais = Cidade.id_cidade
WHERE Cidade.Capital = 'S';

/*3. Liste todos os atributos dos países onde a expectativa de vida é menor que 70 anos*/
SELECT Pais.nome_pais , Pais.Expec_vida
FROM Pais
LEFT JOIN Cidade ON Cidade.id_cidade = Pais.id_pais
WHERE Pais.Expec_vida <70;

/*4. Liste todas as capitais e as populações dos países cujos PIB é maior que 1 trilhão de dólares.*/
SELECT Cidade.nome_cidade, Pais.Pop, Pais.PIB
FROM Cidade
LEFT JOIN Pais ON Pais.id_pais = Cidade.id_cidade
WHERE Pais.PIB > 10000;

/*5. Qual é o nome e a população da capital do país onde o rio St. Lawrence tem sua nascente.*/
SELECT Pais.nome_pais, Pais.Pop
FROM Pais
LEFT JOIN Rio ON Rio.origem = Pais.nome_pais
WHERE Rio.nome_rio = 'St. Lawrence';

/*6. Qual é a média da população das cidades que não são capitais.*/
SELECT AVG (Pop) AS media_populacao
FROM Cidade
WHERE Capital = 'N';

/*7. Para cada continente retorne o PIB médio de seus países.*/
SELECT Pais.Continente, AVG (Pais.PIB)
FROM Pais
GROUP BY Continente;


/*8. Para cada país onde pelo menos 2 rios tem nascente, encontre o comprimento do menor rio.*/
SELECT Rio.origem AS Pais,
MIN(Comprimento) AS MenorComprimento
FROM Rio
GROUP BY origem
HAVING COUNT(*) >=2;

/*9. Liste os países cujo PIB é maior que o PIB é do Canada.*/
SELECT Pais.nome_pais, Pais.PIB
FROM Pais
WHERE Pais.PIB > 658;