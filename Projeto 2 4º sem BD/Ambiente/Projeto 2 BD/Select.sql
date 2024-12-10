DROP PROCEDURE IF EXISTS sp_Sel_Filme;

GO
CREATE PROCEDURE sp_Sel_Filme 
AS 
BEGIN
    SELECT ID_Filme, Nm_Filme  
    FROM TB_Filme  
    WHERE st_ativo = 'A';
END;
GO
