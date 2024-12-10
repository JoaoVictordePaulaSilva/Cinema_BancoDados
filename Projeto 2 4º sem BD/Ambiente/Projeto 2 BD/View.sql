DROP VIEW IF EXISTS Vw_Cliente;
GO
CREATE VIEW Vw_Cliente AS
SELECT
    ID_Cliente,
    Nm_Cliente,
    '(' + SUBSTRING(Telefone, 1, 2) + ') ' + 
    SUBSTRING(Telefone, 3, 5) + '-' + 
    SUBSTRING(Telefone, 8, 4) AS Telefone_Formatado,
    
    SUBSTRING(CPF, 1, 3) + '.' + 
    SUBSTRING(CPF, 4, 3) + '.' + 
    SUBSTRING(CPF, 7, 3) + '-' + 
    SUBSTRING(CPF, 10, 2) AS CPF_Formatado,
    
    Email
FROM TB_Cliente
WHERE st_ativo = 'A';
GO