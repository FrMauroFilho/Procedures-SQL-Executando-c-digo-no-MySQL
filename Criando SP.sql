select distinct sabor from tabela_de_produtos where CODIGO_DO_PRODUTO = '1000889';

select* from tabela_de_produtos;

call acha_sabor_produto(1000889);

call acha_tipo_sabor(1000889);


USE `sucos_vendas`;

DELIMITER $$
USE `sucos_vendas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_tipo_sabor_erro`(vProduto varchar(50))
BEGIN
declare vSabor varchar(50);
SELECT 
    sabor
INTO vsabor FROM
    tabela_de_produtos
WHERE
    codigo_do_produto = vProduto;

case vSabor 
when 'Lima/Limão' then select 'Cítrico';
when 'Laranja' then select 'Cítrico';
when 'Morango/Limão' then select 'Cítrico';
when 'Uva' then select 'Neutros';
when 'Morango' then select 'Neutros';
end case;
END$$

DELIMITER ;
;


call acha_tipo_sabor_erro(1004327);
call acha_status_preco_case(1004327)
