CREATE TABLE TAB_FATURAMENTO 
    (DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT);
    
Select * from Clientes;
Select * from Vendedores;
Select * from Produtos;

Delete From Notas;
Delete From itens _notas;

Insert into notas(numero, data_venda, CPF, matricula, imposto)
    values
        ('0100', To_date('2019-06-05','YYYY-MM-DD'), '1471156710', '235',0.10);

Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0100', '1040107', 1000, 10);
        
Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0100', '1000889', 1000, 10);

      
Insert into notas(numero, data_venda, CPF, matricula, imposto)
    values
        ('0101', To_date('2019-06-05','YYYY-MM-DD'), '3623344710', '235',0.10);

Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0101', '1040107', 1000, 10);
        
Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0101', '1000889', 1000, 10);
        
        
Select * from notas;
Select * from itens_notas;


Select notas.data_venda, SUM(itens_notas.quantidade * itens_notas.preco) as total_venda
from NOTAS INNER JOIN Itens_notas
ON Notas.numero = itens_notas.numero
Group By notas.Data_venda;


Insert into Tab_faturamento 
Select notas.data_venda, SUM(itens_notas.quantidade * itens_notas.preco) as total_venda
from NOTAS INNER JOIN Itens_notas
ON Notas.numero = itens_notas.numero
Group By notas.Data_venda;

Select * From tab_faturamento;


Insert into notas(numero, data_venda, CPF, matricula, imposto)
    values
        ('0102', To_date('2019-06-05','YYYY-MM-DD'), '3623344710', '235',0.10);

Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0102', '1040107', 1000, 10);
        
Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0102', '1000889', 1000, 10);


Delete From tab_faturamento;

Insert into Tab_faturamento 
Select notas.data_venda, SUM(itens_notas.quantidade * itens_notas.preco) as total_venda
from NOTAS INNER JOIN Itens_notas
ON Notas.numero = itens_notas.numero
Group By notas.Data_venda;


Create Trigger TG_CALCULO_FATURAMENTO
    After Insert On Itens_notas
        Begin
            Delete From tab_faturamento;
            Insert into tab_faturamento 
            Select notas.data_venda, SUM(itens_notas.quantidade * itens_notas.preco) as total_venda
            from NOTAS INNER JOIN Itens_notas
            ON Notas.numero = itens_notas.numero
            Group By notas.Data_venda;
        End;

Insert into notas(numero, data_venda, CPF, matricula, imposto)
    values
        ('0103', To_date('2019-06-05','YYYY-MM-DD'), '3623344710', '235',0.10);

Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0103', '1040107', 1000, 10);
        
Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0103', '1000889', 1000, 10);
        
        
Insert into notas(numero, data_venda, CPF, matricula, imposto)
    values
        ('0104', To_date('2019-06-06','YYYY-MM-DD'), '3623344710', '235',0.10);

Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0104', '1040107', 1000, 10);
        
Insert into itens_notas(numero, codigo, quantidade, preco)
    values
        ('0104', '1000889', 1000, 10);
