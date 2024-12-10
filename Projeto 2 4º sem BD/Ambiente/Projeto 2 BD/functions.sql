DROP FUNCTION IF EXISTS fn_QtdIngressosDisponiveisPorSessao;
GO
CREATE FUNCTION fn_QtdIngressosDisponiveisPorSessao(@ID_Sessao INT)
RETURNS INT
AS
BEGIN
    DECLARE @qtdIngressosDisponiveis INT;
    SELECT @qtdIngressosDisponiveis = COUNT(ID_Ingresso)
    FROM TB_Ingresso
    WHERE ID_Sessao = @ID_Sessao;
    RETURN @qtdIngressosDisponiveis;
END;
GO


DROP FUNCTION IF EXISTS fn_QtdClientesAtivos;
GO
CREATE FUNCTION fn_QtdClientesAtivos()
RETURNS INT
AS
BEGIN
    DECLARE @qtdClientesAtivos INT;

    SELECT @qtdClientesAtivos = COUNT(*)
    FROM TB_Cliente
    WHERE st_ativo = 'A';

    RETURN @qtdClientesAtivos;
END;
GO

DROP FUNCTION IF EXISTS fn_QtdClientesInativos;
GO
CREATE FUNCTION fn_QtdClientesInativos()
RETURNS INT
AS
BEGIN
    DECLARE @qtdClientesAtivos INT;

    SELECT @qtdClientesAtivos = COUNT(*)
    FROM TB_Cliente
    WHERE st_ativo = 'I';

    RETURN @qtdClientesAtivos;
END;
GO

DROP FUNCTION IF EXISTS fn_FormatarCPF;
GO
CREATE FUNCTION fn_FormatarCPF(@CPF VARCHAR(11))
RETURNS VARCHAR (20)
AS
BEGIN
    RETURN SUBSTRING(@CPF, 1, 3) + '.' + 
    SUBSTRING(@CPF, 4, 3) + '.' + 
    SUBSTRING(@CPF, 7, 3) + '-' + 
    SUBSTRING(@CPF, 10, 2);
END;
GO

DROP FUNCTION IF EXISTS fn_FormatarTelefone;
GO
CREATE FUNCTION fn_FormatarTelefone(@Telefone VARCHAR(11))
RETURNS VARCHAR (20)
AS
BEGIN
    RETURN '(' + SUBSTRING(@Telefone, 1, 2) + ') ' + 
    SUBSTRING(@Telefone, 3, 5) + '-' + 
    SUBSTRING(@Telefone, 8, 4);
END;
GO


