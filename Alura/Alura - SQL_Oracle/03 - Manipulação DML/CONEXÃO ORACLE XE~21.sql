
SELECT * FROM CLIENTES;

INSERT INTO 
    Clientes
VALUES
    ('1471156710',
    'Erica Carvalho',
    'Rua Iriquitia',
    'Jardins',
    'Sao Paulo',
    'SP',
    '80012212',
    To_date('1990-09-01', 'yyyy-mm-dd'),
    27,
    'F',
    170000,
    24500,
    0);
    
SELECT * FROM TABELA_DE_CLIENTES

SELECT CPF, NOME, ENDERECO_1 as Endereco, Bairro, Cidade, Estado, CEP, Data_de_nascimento as Data_nascimento, idade, Sexo, Limite_de_credito as Limite_Credito, Volume_de_compra as Volume_compra, Primeira_Compra
from Tabela_de_Clientes;

INSERT INTO clientes
SELECT CPF, NOME, ENDERECO_1 as Endereco, Bairro, Cidade, Estado, CEP, Data_de_nascimento as Data_nascimento, idade, Sexo, Limite_de_credito as Limite_Credito, Volume_de_compra as Volume_compra, Primeira_Compra
from Tabela_de_Clientes;

INSERT INTO clientes
SELECT CPF, NOME, ENDERECO_1 as Endereco, Bairro, Cidade, Estado, CEP, Data_de_nascimento as Data_nascimento, idade, Sexo, Limite_de_credito as Limite_Credito, Volume_de_compra as Volume_compra, Primeira_Compra
from Tabela_de_Clientes WHERE CPF <> '1471156710';

INSERT INTO clientes
SELECT CPF, NOME, ENDERECO_1 as Endereco, Bairro, Cidade, Estado, CEP, Data_de_nascimento as Data_nascimento, idade, Sexo, Limite_de_credito as Limite_Credito, Volume_de_compra as Volume_compra, Primeira_Compra
from Tabela_de_Clientes WHERE CPF NOT IN (SELECT CPF FROM CLIENTES);

DELETE FROM CLIENTES;

INSERT INTO 
    Clientes
VALUES
    ('1471156710',
    'Erica Carvalho',
    'Rua Iriquitia',
    'Jardins',
    'Sao Paulo',
    'SP',
    '80012212',
    To_date('1990-09-01', 'yyyy-mm-dd'),
    27,
    'F',
    170000,
    24500,
    0);
    
INSERT INTO 
    Clientes
VALUES
    ('3623344710',
    'Marcos Nogueira',
    'Av.Pastor Martin Luther King Junior',
    'Inhauma',
    'Rio de Janeiro',
    'RJ',
    '22002012',
    To_date('1995-01-13', 'yyyy-mm-dd'),
    23,
    'M',
    110000,
    22000,
    1);
    
SELECT * FROM CLIENTES;