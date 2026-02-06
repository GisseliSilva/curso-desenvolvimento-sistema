CREATE DATABASE manipulacao_de_dados;
USE manipulacao_de_dados;

CREATE TABLE Cliente(
	cod_cli INT NOT NULL PRIMARY KEY,
    nome_cli VARCHAR(50) NOT NULL,
    sexo_cli CHAR(01) NOT NULL CHECK(sexo_cli IN ('F','M')) DEFAULT 'F',
    renda_cli DECIMAL(10,2) CHECK(renda_cli >=0)DEFAULT 0,
    RG_cli CHAR(12) NOT NULL UNIQUE
);
    
CREATE TABLE Funcionario(
	cod_func INT NOT NULL PRIMARY KEY,
    nome_func VARCHAR(50) NOT NULL,
    sexo_func CHAR(01) NOT NULL CHECK(sexo_func IN ('F','M')) DEFAULT 'F',
    sal_func DECIMAL(10,2) NOT NULL CHECK(sal_func >=0),
    dat_cadfunc datetime NOT NULL DEFAULT now()
);

ALTER TABLE Cliente
MODIFY COLUMN  dat_cadcli  DATE NOT NULL;

INSERT INTO Cliente(cod_cli, nome_cli, sexo_cli,renda_cli, RG_cli, dat_cadcli)
VALUES
	('1', 'João' , 'M', 5000.00, 123456),
    ('2', 'Daniel' , 'M' , 6000.00, 145678),
	('3', 'Helena' ,'F' , 6000.00, 564333),
	('4', 'Roberta' ,'F' , 5000.00, 564322),
	('5','Renata' ,'F' , 3000.00, 654321),
	('6', 'Giovanna' ,'F' , 3500.00, 564321);

SELECT * FROM Cliente;

ALTER TABLE funcionario
MODIFY COLUMN  dat_cadfunc  DATE NOT NULL;

INSERT INTO  Funcionario(cod_func, nome_func,sexo_func, sal_func, dat_cadfunc)
VALUES
	('1', 'Salvador' , 'M', 7000.00, '1995-01-03'),
    ('2', 'Antônio' , 'M' , 6000.00, '1998-05-06'),
	('3', 'Antonieta' ,'F' , 6500.00, '1998-08-07'),
	('4', 'Eduardo' ,'M' , 4000.00, '2000-08-06'),
	('5','Leny' ,'F' , 3000.00, '2001-08-06');

SELECT * FROM Funcionario;

SELECT 
	'Cliente' AS Tipo,
    nome_cli AS Nome,
    sexo_cli AS genero,
    NULL AS Data_cadastro,
    RG_cli AS RG 
FROM Cliente 
    
UNION ALL 
    
SELECT
	'Funcionario' AS Tipo,
	nome_func AS Nome,
	sexo_func AS Genero,
	DATE_FORMAT(dat_cadfunc,'%d/%m/%Y') AS Data_cadastro,
	NULL AS RG 
FROM Funcionario;

 
 
 


    