SELECT
    tp.sabor,
    inf.quantidade
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto;

SELECT
    tp.sabor,
    nf.data_venda,
    inf.quantidade
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero;

SELECT
    tp.sabor,
    to_char(nf.data_venda, 'YYYY') AS ano,
    SUM(inf.quantidade)            AS quantidade_vendida
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero
GROUP BY
    tp.sabor,
    to_char(nf.data_venda, 'YYYY');

SELECT
    tp.sabor,
    to_char(nf.data_venda, 'YYYY') AS ano,
    SUM(inf.quantidade)            AS quantidade_vendida
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero
WHERE
    to_char(nf.data_venda, 'YYYY') = '2016'
GROUP BY
    tp.sabor,
    to_char(nf.data_venda, 'YYYY');

SELECT
    tp.sabor,
    to_char(nf.data_venda, 'YYYY') AS ano,
    SUM(inf.quantidade)            AS quantidade_vendida
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero
WHERE
    to_char(nf.data_venda, 'YYYY') = '2016'
GROUP BY
    tp.sabor,
    to_char(nf.data_venda, 'YYYY')
ORDER BY
    SUM(inf.quantidade) DESC;

SELECT
    to_char(nf.data_venda, 'YYYY') AS ano,
    SUM(inf.quantidade)            AS quantidade_vendida
FROM
         itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero
WHERE
    to_char(nf.data_venda, 'YYYY') = '2016'
GROUP BY
    to_char(nf.data_venda, 'YYYY')
ORDER BY
    SUM(inf.quantidade) DESC;

SELECT
    venda_sabor.sabor,
    venda_sabor.ano,
    venda_sabor.quantidade_vendida,
    total_venda.quantidade_vendida AS total
FROM
         (
        SELECT
            tp.sabor,
            to_char(nf.data_venda, 'YYYY') AS ano,
            SUM(inf.quantidade)            AS quantidade_vendida
        FROM
                 itens_notas_fiscais inf
            INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            tp.sabor,
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            SUM(inf.quantidade) DESC
    ) venda_sabor
    INNER JOIN (
        SELECT
            to_char(nf.data_venda, 'YYYY') AS ano,
            SUM(inf.quantidade)            AS quantidade_vendida
        FROM
                 itens_notas_fiscais inf
            INNER JOIN tabela_de_produtos tp ON inf.codigo_do_produto = tp.codigo_do_produto
            INNER JOIN notas_fiscais      nf ON inf.numero = nf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = '2016'
        GROUP BY
            to_char(nf.data_venda, 'YYYY')
        ORDER BY
            SUM(inf.quantidade) DESC
    ) total_venda ON venda_sabor.ano = total_venda.ano

SELECT VENDA_SABOR.SABOR, VENDA_SABOR.ANO, VENDA_SABOR.QUANTIDADE_VENDIDA, 
TOTAL_VENDA.QUANTIDADE_VENDIDA AS TOTAL,
ROUND(((VENDA_SABOR.QUANTIDADE_VENDIDA/ TOTAL_VENDA.QUANTIDADE_VENDIDA)*100),2) AS PARTICIPACAO
FROM
(SELECT TP.SABOR, TO_CHAR(NF.DATA_VENDA, 'YYYY') AS ANO, 
SUM (INF.QUANTIDADE) AS QUANTIDADE_VENDIDA FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(NF.DATA_VENDA, 'YYYY') = '2016'
GROUP BY TP.SABOR, TO_CHAR(NF.DATA_VENDA, 'YYYY')
ORDER BY SUM(INF.QUANTIDADE) DESC) VENDA_SABOR
INNER JOIN
(SELECT TO_CHAR(NF.DATA_VENDA, 'YYYY') AS ANO, SUM (INF.QUANTIDADE) AS QUANTIDADE_VENDIDA FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(NF.DATA_VENDA, 'YYYY') = '2016'
GROUP BY TO_CHAR(NF.DATA_VENDA, 'YYYY')
ORDER BY SUM(INF.QUANTIDADE) DESC) TOTAL_VENDA
ON VENDA_SABOR.ANO = TOTAL_VENDA.ANO;

SELECT VENDA_SABOR.SABOR, VENDA_SABOR.ANO, VENDA_SABOR.QUANTIDADE_VENDIDA, 
ROUND(((VENDA_SABOR.QUANTIDADE_VENDIDA/ TOTAL_VENDA.QUANTIDADE_VENDIDA)*100),2) AS PARTICIPACAO
FROM
(SELECT 
TP.SABOR, 
TO_CHAR(NF.DATA_VENDA, 'YYYY') AS ANO, 
SUM (INF.QUANTIDADE) AS QUANTIDADE_VENDIDA 
FROM 
ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(NF.DATA_VENDA, 'YYYY') = '2016'
GROUP BY TP.SABOR, TO_CHAR(NF.DATA_VENDA, 'YYYY')
ORDER BY SUM(INF.QUANTIDADE) DESC) VENDA_SABOR
INNER JOIN
(SELECT TO_CHAR(NF.DATA_VENDA, 'YYYY') AS ANO, SUM (INF.QUANTIDADE) AS QUANTIDADE_VENDIDA FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(NF.DATA_VENDA, 'YYYY') = '2016'
GROUP BY TO_CHAR(NF.DATA_VENDA, 'YYYY')
ORDER BY SUM(INF.QUANTIDADE) DESC) TOTAL_VENDA
ON VENDA_SABOR.ANO = TOTAL_VENDA.ANO;

-- EXERCICIOS POR RELATORIO POR TAMANHO. 
     SELECT
    venda_tamanho.tamanho,
    venda_tamanho.ano,
    venda_tamanho.quantidade,
    round((venda_tamanho.quantidade / venda_total.quantidade) * 100, 2) AS participacao
FROM
         (
        SELECT
            tp.tamanho,
            to_char(nf.data_venda, 'YYYY') AS ano,
            SUM(inf.quantidade)            AS quantidade
        FROM
                 tabela_de_produtos tp
            INNER JOIN itens_notas_fiscais inf ON tp.codigo_do_produto = inf.codigo_do_produto
            INNER JOIN notas_fiscais       nf ON nf.numero = inf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = 2016
        GROUP BY
            tp.tamanho,
            to_char(nf.data_venda, 'YYYY')
    ) venda_tamanho
    INNER JOIN (
        SELECT
            to_char(nf.data_venda, 'YYYY') AS ano,
            SUM(inf.quantidade)            AS quantidade
        FROM
                 tabela_de_produtos tp
            INNER JOIN itens_notas_fiscais inf ON tp.codigo_do_produto = inf.codigo_do_produto
            INNER JOIN notas_fiscais       nf ON nf.numero = inf.numero
        WHERE
            to_char(nf.data_venda, 'YYYY') = 2016
        GROUP BY
            to_char(nf.data_venda, 'YYYY')
    ) venda_total ON venda_tamanho.ano = venda_total.ano
ORDER BY
    venda_tamanho.quantidade DESC