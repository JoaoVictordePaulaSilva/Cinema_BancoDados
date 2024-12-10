DROP PROCEDURE IF EXISTS sp_Sel_Mapa;

GO
CREATE PROCEDURE sp_Sel_Mapa
AS
BEGIN
    SELECT 
        cl.ID_Cliente,
        cl.Nm_Cliente,
        cl.CPF,
        cl.Email,
        cl.Telefone,
        f.ID_Filme,
        f.Nm_Filme,
        f.Genero,
        f.Duracao,
        s.ID_Sala,
        s.Nm_Sala,

        func.ID_Funcionario,
        func.Nm_Funcionario,
        func.CPF_Func,
        func.Email_Func,
        func.Telefone_Func,

        s.Capacidade,
        se.ID_Sessao,
        se.Data_Horario,
        i.ID_Ingresso,
        i.Preco,
        i.Assento
    FROM 
        TB_Filme f
    INNER JOIN 
        TB_Sessao se ON f.ID_Filme = se.ID_Filme
    INNER JOIN 
        TB_Sala s ON se.ID_Sala = s.ID_Sala
    INNER JOIN 
        TB_Funcionario func ON func.ID_Funcionario = s.ID_Funcionario
    INNER JOIN 
        TB_Cliente cl ON s.ID_Sala = cl.ID_Cliente 
    INNER JOIN 
        TB_Ingresso i ON se.ID_Sessao = i.ID_Sessao
    WHERE 
        f.st_ativo = 'A' 
    ORDER BY 
        cl.Nm_Cliente;
END;
GO