use sucos_vendas;
select * from tabela_de_produtos;

select * from tabela_de_produtos where codigo_do_produto = '4000001';

call inclui_novo_produto_parametro('4000001', 'Sabor do Pantanal 1 Litro - Melancia', 'Melancia', '1 Litro', 'PET', 4.76);


