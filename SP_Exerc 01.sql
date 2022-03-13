CREATE PROCEDURE `Exerc01`()
BEGIN
DECLARE Cliente VARCHAR (10);
DECLARE Idade INT;
DECLARE DataNascimento DATE;
DECLARE Custo FLOAT;

SET Cliente = 'João';
SET Idade = 10;
SET DataNascimento = '20170110';
SET Custo = 10.23;

SELECT Cliente;
SELECT Idade;
SELECT DataNascimento;
SELECT Custo;

END;

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Exerc01`()
BEGIN
declare cliente varchar (10) default 'João';
declare idade integer default 10;
declare DataNascimento date default '2007-01-10';
declare custo decimal(4,2) default 10.23;

select cliente;
select idade;
select DataNascimento;
select custo;
END