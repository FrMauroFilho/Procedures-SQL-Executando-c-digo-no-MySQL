select * from tabela_de_clientes;
call limite_creditos ();
call looping_cursor_multiplas_colunas;


SELECT INF.QUANTIDADE, INF.PRECO FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN NOTAS_FISCAIS  NF 
ON NF.NUMERO = INF.NUMERO
WHERE MONTH(NF.DATA_VENDA) = 1 AND YEAR(NF.DATA_VENDA) = 2017;

call mais_um_campo(1,2017);

set global log_bin_trust_function_creators = 1;

select f_acha_tipo_sabor ('Laranja');

select nome_do_produto, sabor, f_acha_tipo_sabor (sabor) as Tipo from tabela_de_produtos;

select nome_do_produto, sabor from tabela_de_produtos
where f_acha_tipo_sabor (sabor) = 'Neutros';

select concat(Nome_do_produto, ' ', Sabor) from tabela_de_produtos;

select * from notas_fiscais where data_venda = '2015-02-01'; 

select numeronotas ('2015-02-01')