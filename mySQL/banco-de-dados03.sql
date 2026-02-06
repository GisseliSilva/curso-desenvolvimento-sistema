CREATE DATABASE CarroTabela;
USE CarroTabela;

CREATE TABLE IF NOT EXISTS tbl_carro(
	id_carro INT AUTO_INCREMENT PRIMARY KEY,
    placa_carro VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano_fab INT NOT NULL
);

INSERT INTO tbl_carro(placa_carro,marca, modelo,ano_fab)
VALUES
	('DAE6534', 'Ford', 'Fiesta', 1999),
    ('DKL4598', 'Wolksvagen', 'Gol' , 2001),
    ('DKL7878', 'Ford', 'Fiesta', 2001),
    ('JDM8776', 'Wolksvagen', 'Santana', 2002),
    ('JJM3692', 'Chevrolet', 'Corsa', 1999);

/*selecionar todas as colunas*/
SELECT * FROM tbl_carro;

/*tópico 2*/
UPDATE tbl_carro SET modelo = 'New Fiesta' WHERE placa_carro = 'DAE6534';
SELECT * FROM tbl_carro;

SET SQL_SAFE_UPDATES=0;

/*tópico 3*/
DELETE FROM tbl_carro WHERE placa_carro= 'DKL4598';
SELECT * FROM tbl_carro;

/*tópico 4*/
CREATE VIEW View_tbl_carro AS
SELECT placa_carro, marca, modelo, ano_fab
FROM tbl_carro WHERE ano_fab >=2000;

SELECT * FROM View_tbl_carro;
SELECT * FROM tbl_carro;

/*tópico 5*/
ALTER TABLE tbl_carro
ADD COLUMN tabela_fipe FLOAT(10) AFTER modelo;
SELECT * FROM tbl_carro;

UPDATE tbl_carro SET tabela_fipe = 15000 WHERE placa_carro = 'DKL7878';

/*tópico 6*/
UPDATE tbl_carro
SET tabela_fipe = CASE placa_carro
	WHEN 'JDM8776' THEN 8000
    when 'JJM3692' THEN 12000
    WHEN 'DAE6534' THEN 15000
END;

SELECT * FROM tbl_carro;