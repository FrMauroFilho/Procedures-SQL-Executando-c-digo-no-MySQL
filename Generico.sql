select * from tabela_de_clientes;

select data_de_nascimento from tabela_de_clientes where CPF = '1471156710';

call cliente_novo_velho ('19290992743');

select * from notas_fiscais; 

call testa_numero_notas ('2015-01-03');

select * from tabela_de_produtos;

-- >= 12,00 ----- caro
-- >= 7 e 12 em conta 
-- < 7 barato

select preco_de_lista from tabela_de_produtos where CODIGO_DO_PRODUTO = '1000889';

call acha_status_preco ('1022450');


SELECT data_venda, SUM(B.QUANTIDADE * B.PRECO) AS TOTAL_VENDA FROM 
NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
ON A.NUMERO = B.NUMERO
group by data_venda;

call comparativo_vendas ('2016-01-15','2016-01-14');

