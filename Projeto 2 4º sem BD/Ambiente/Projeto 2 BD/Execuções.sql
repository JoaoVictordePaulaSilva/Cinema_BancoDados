EXEC sp_Cinema_Ambiente;
EXEC sp_Cinema_CargaInicial;

EXEC sp_Sel_Mapa;

EXEC sp_Sel_FilmeESP @ID_Filme = 1;
EXEC sp_Sel_Filme; 

EXEC sp_Del_Filme @ID_Filme = 1;

EXEC sp_Ins_Filme @Nm_Filme = 'Carros', @Genero = 'Animação', @Duracao= '120'

EXEC sp_Upd_Filme @ID_Filme = 2, @Nm_Filme = 'BladeRunner 2049';
    
Select * from Vw_Cliente;