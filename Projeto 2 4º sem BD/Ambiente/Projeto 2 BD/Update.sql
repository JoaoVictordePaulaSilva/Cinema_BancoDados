DROP PROCEDURE IF EXISTS sp_Upd_Filme;

GO
CREATE PROCEDURE sp_Upd_Filme(
@ID_Filme  INT, 
@Nm_Filme varchar (100))  
AS
BEGIN
    set @Nm_Filme = UPPER(@Nm_Filme);  
    UPDATE TB_Filme  
    SET Nm_Filme = @Nm_Filme  
    WHERE ID_Filme = @ID_Filme;
END;
GO
