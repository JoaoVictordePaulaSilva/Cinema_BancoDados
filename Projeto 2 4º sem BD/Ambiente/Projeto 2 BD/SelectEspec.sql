DROP PROCEDURE IF EXISTS sp_Sel_FilmeESP;

GO
CREATE PROCEDURE sp_Sel_FilmeESP
@ID_Filme  INT
AS
BEGIN
    SELECT f.ID_Filme, f.Nm_Filme, f.Genero, f.Duracao, s.Nm_Sala  
    FROM TB_Filme f  
    JOIN TB_Sessao sess ON f.ID_Filme = sess.ID_Filme  
    JOIN TB_Sala s ON sess.ID_Sala = s.ID_Sala 
    WHERE f.ID_Filme = @ID_Filme AND f.st_ativo = 'A'; 
END;
GO
