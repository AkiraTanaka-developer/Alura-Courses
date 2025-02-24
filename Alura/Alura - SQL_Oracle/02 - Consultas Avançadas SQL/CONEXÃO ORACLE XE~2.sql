SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Maca%';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Maca%' AND EMBALAGEM = 'PET';

SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT DISTINCT EMBALAGEM , SABOR FROM TABELA_DE_PRODUTOS;

SELECT ROWNUM CODIGO_DO_PRODUTO, NOME_DO_PRODUTO FROM TABELA_DE_PRODUTOS;

SELECT ROWNUM CODIGO_DO_PRODUTO, NOME_DO_PRODUTO FROM TABELA_DE_PRODUTOS
WHERE ROWNUM <= 5;

SELECT ROWNUM CODIGO_DO_PRODUTO, NOME_DO_PRODUTO FROM TABELA_DE_PRODUTOS
WHERE ROWNUM >= 5; -- N�o funciona

SELECT ROWNUM CODIGO_DO_PRODUTO, NOME_DO_PRODUTO FROM TABELA_DE_PRODUTOS
WHERE ROWNUM < 10;

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limao'

SELECT * FROM ITENS_NOTAS_FISCAIS WHERE CODIGO_DO_PRODUTO = '1101035' ORDER BY QUANTIDADE DESC