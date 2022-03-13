select sabor from tabela_de_produtos where CODIGO_DO_PRODUTO = '4000001';

call acha_sabor_produto ('1013793');

select * from tabela_de_produtos;

select count(CPF) from notas_fiscais where data_venda = '2017-01-01';

select * from notas_fiscais where data_venda = '2017-01-01';

call quantidade_notas ('2017-01-01');