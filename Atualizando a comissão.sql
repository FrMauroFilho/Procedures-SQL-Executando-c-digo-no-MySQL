select * from tabela_de_vendedores;

delimiter // 
CREATE PROCEDURE `Reajuste_Comissao` (vPercent FLOAT)
BEGIN
UPDATE tabela_de_vendedores SET percentual_comissao = percentual_comissao * (1 + vPercent);
END//