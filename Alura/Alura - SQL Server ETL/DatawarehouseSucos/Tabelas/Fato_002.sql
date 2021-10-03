CREATE TABLE [dbo].[Fato_002]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Frete] FLOAT NULL, 
    PRIMARY KEY ([Cod_Produto], [Cod_Cliente],[Cod_Fabrica], [Cod_Dia]), 
    CONSTRAINT [FK_Fato_002_DIM_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [DIM_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_Fato_002_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]),
    CONSTRAINT [FK_Fato_002_DIM_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [DIM_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_Fato_002_Dim_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [Dim_Tempo]([Cod_Dia])
)
