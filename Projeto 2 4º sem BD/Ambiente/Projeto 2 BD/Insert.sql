DROP PROCEDURE if EXISTS sp_Ins_Filme;
GO
CREATE PROCEDURE sp_Ins_Filme(
@Nome_Filme varchar (100),
@Genero varchar (50),
@Duracao INT,
@ID_Sala INT NOT NULL,
@Data_Horario DATE NOT NULL) 
AS
BEGIN
set @Nome_Filme = Upper(@Nome_Filme)
INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao)
VALUES (@Nm_Filme, @Genero, @Duracao);
DECLARE @ID_FilmeInserido INT;
SET @ID_FilmeInserido = SCOPE_IDENTITY();
INSERT INTO TB_Sessao (ID_Filme, ID_Sala, Data_Horario)
VALUES (@ID_FilmeInserido, @ID_Sala, @Data_Horario);
END;
GO