SELECT * FROM TABELA_DE_CLIENTES;

SELECT CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO, IDADE, SEXO,
LIMITE_DE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA
FROM TABELA_DE_CLIENTES;

SELECT CPF AS INDENTIFICADOR, NOME AS CLIENTE FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Uva';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';

SELECT * FROM TABELA_DE_PRODUTOS WHERE PRECO_DE_LISTA > 19.50;


