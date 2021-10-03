
Select * from tab_faturamento;

Select * from notas;
Select * from Itens_notas;

Update itens_notas set quantidade = 3000
    where numero = '0104' and codigo = '1000889';
    
Delete from itens_notas
    where numero = '0104' and codigo = '1000889';

Drop Trigger TG_Calulo_faturamento;

Create or Replace Trigger TG_CALCULO_FATURAMENTO
    After Insert or Update or Delete On Itens_notas
        Begin
            Delete From tab_faturamento;
            Insert into tab_faturamento 
            Select notas.data_venda, SUM(itens_notas.quantidade * itens_notas.preco) as total_venda
            from NOTAS INNER JOIN Itens_notas
            ON Notas.numero = itens_notas.numero
            Group By notas.Data_venda;
        End;