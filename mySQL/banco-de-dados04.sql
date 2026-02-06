CREATE DATABASE OFICINA;
USE OFICINA;

CREATE TABLE IF NOT EXISTS CARRO(
	id_oficina INT AUTO_INCREMENT PRIMARY KEY,
    numero_placa VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano_fab INT NOT NULL
);

/*ponto 1*/

INSERT INTO CARRO(numero_placa, marca, modelo, ano_fab)
VALUES
	('DAE6534', 'Mercedes-Benz', 'S-Class S 500', 2023),
    ('DKL4598', 'BMW', 'Série 7 750i' , 2022),
    ('DKL7878', 'Audi', 'A8 L', 2023);

/*ponto 2*/
UPDATE CARRO SET modelo = 'New Audi' WHERE numero_placa = 'DKL7878';
SELECT * FROM OFICINA;

SET SQL_SAFE_UPDATES=0;

/*ponto 4*/
CREATE VIEW View_OFICINA AS
SELECT numero_placa, marca, modelo, ano_fab
FROM OFICINA WHERE ano_fab >=2000;

SELECT * FROM View_OFICINA;
SELECT * FROM OFICINA;

/*ponto 5*/
ALTER TABLE OFICINA
ADD COLUMN tabela_fipe FLOAT(10) AFTER modelo;
SELECT * FROM OFICINA;

UPDATE OFICINA SET tabela_fipe = 15000 WHERE numero_placa = 'DKL7878';

/*ponto 6*/
UPDATE OFICINA
SET tabela_fipe = CASE numero_placa
    when 'DKL4598' THEN 12000
    WHEN 'DAE6534' THEN 15000
END;

SELECT * FROM OFICINA; 