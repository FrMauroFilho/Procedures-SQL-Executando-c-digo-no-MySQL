select * from itens_notas_fiscais;

call alo_mundo;
call mostra_numero;
call mostra_numero_alias;

call sp_com_funcoes;
call sp_com_comentarios;

call alo_mundo2;

USE `sucos_vendas`;
DROP procedure IF EXISTS `alo_mundo2`;

USE `sucos_vendas`;
DROP procedure IF EXISTS `sucos_vendas`.`alo_mundo2`;
;

DELIMITER $$
USE `sucos_vendas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `alo_mundo2`()
BEGIN
select 'Alô mundo!!!, tudo bem? Versão 3' as resultado;
END$$

DELIMITER ;
;