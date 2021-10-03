
SELECT * FROM PRODUTOS;

UPDATE PRODUTOS 
    SET PRECO_LISTA = 5
    WHERE CODIGO = '1040107';
    
UPDATE PRODUTOS
    SET PRECO_LISTA = 6
    WHERE SABOR = 'Maracuja';
    
SELECT * FROM PRODUTOS
    WHERE SABOR = 'Maracuja';

SELECT * FROM PRODUTOS
    WHERE CODIGO = '1000889';
    
UPDATE PRODUTOS 
    SET Descritor = 'Sabor da Montanha - 1 Litro - Uva',
        Embalagem = 'PET',
        Sabor = 'Uva'
    WHERE Codigo = '1000889';
    
UPDATE Produtos 
    SET PRECO_LISTA = PRECO_LISTA * 1.1
    WHERE Sabor = 'Maracuja';