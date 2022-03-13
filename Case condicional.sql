DELIMITER $$
USE `sucos_vendas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `comparativo_vendas_case_cond`(data_inicial date, data_final date)
BEGIN

declare vFaturamento_inicial float;
declare vFaturamento_final float;
declare vresultado varchar (30);

SELECT SUM(B.QUANTIDADE * B.PRECO) into vFaturamento_inicial FROM 
NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
ON A.NUMERO = B.NUMERO
WHERE A.DATA_VENDA = data_inicial;

SELECT SUM(B.QUANTIDADE * B.PRECO) into vFaturamento_final FROM 
NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
ON A.NUMERO = B.NUMERO
WHERE A.DATA_VENDA = data_final;

Case 
when (vFaturamento_final-vFaturamento_inicial)/vFaturamento_final > 0.1 then 
set vresultado = 'verde';
when  -0.1 < ((vFaturamento_final-vFaturamento_inicial)/vFaturamento_final) < 0.1 then
set vresultado = 'amarelo1';
else 
set vresultado = 'vermelho';
end case;

select vresultado;
END$$

DELIMITER ;
;

call comparativo_vendas_case_cond('2015-01-01','2015-01-02')