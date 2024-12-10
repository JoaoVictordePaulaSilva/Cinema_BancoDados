DROP PROCEDURE IF EXISTS sp_Del_Filme;
GO
CREATE PROCEDURE sp_Del_Filme
@ID_Filme INT  
AS
BEGIN
    UPDATE TB_Filme  
    SET st_ativo = 'I'
    WHERE ID_Filme = @ID_Filme;
    
    UPDATE TB_Sessao
    SET st_ativo = 'I'
    WHERE ID_Filme = @ID_Filme;
END;
GO