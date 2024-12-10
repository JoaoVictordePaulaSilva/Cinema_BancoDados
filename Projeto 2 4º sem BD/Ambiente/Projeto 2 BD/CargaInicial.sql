DROP PROCEDURE IF EXISTS sp_Cinema_CargaInicial;

GO
CREATE PROCEDURE sp_Cinema_CargaInicial
AS
BEGIN

    INSERT INTO TB_Cliente (Nm_Cliente, Telefone, Email, CPF) VALUES 
    ('João da Silva', '11999991234', 'joao.silva@example.com', '12345678900');
    INSERT INTO TB_Cliente (Nm_Cliente, Telefone, Email, CPF) VALUES 
    ('Maria Souza', '21988884321', 'maria.souza@example.com', '98765432100');
    INSERT INTO TB_Cliente (Nm_Cliente, Telefone, Email, CPF) VALUES 
    ('Carlos Pereira', '31977778765', 'carlos.pereira@example.com', '45678912300');

    INSERT INTO TB_Funcionario (Nm_Funcionario, Telefone_Func, Email_Func, CPF_Func) VALUES 
    ('Bruno Rabelo', '99878787878', 'Rabas@example.com', '11111111111');
    INSERT INTO TB_Funcionario (Nm_Funcionario, Telefone_Func, Email_Func, CPF_Func) VALUES 
    ('Cristina Neves', '4105684933', 'C.Neves@example.com', '22222222222');
    INSERT INTO TB_Funcionario (Nm_Funcionario, Telefone_Func, Email_Func, CPF_Func) VALUES 
    ('Oberon Vortigern', '99696969699', 'LostbeltKing@Avalon.com', '33333333333');


    INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao) VALUES 
    ('Interestelar', 'Ficção Científica', 160);    
    INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao) VALUES 
    ('NOPE', 'Suspense', 130);    
    INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao) VALUES 
    ('Moonfall', 'Ficção Científica', 110);   
    INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao) VALUES 
    ('Skinamarink', 'Terror', 100);    
    INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao) VALUES 
    ('John Wick', 'Ação', 130);   
    INSERT INTO TB_Filme (Nm_Filme, Genero, Duracao) VALUES 
    ('GET OUT', 'Suspense', 120);

    INSERT INTO TB_Sala (ID_Funcionario, Nm_Sala, Capacidade) VALUES 
    (1, 'Sala 1', 120);    
    INSERT INTO TB_Sala (Nm_Sala, Capacidade) VALUES 
    (2, 'Sala 2', 150);    
    INSERT INTO TB_Sala (Nm_Sala, Capacidade) VALUES 
    (3, 'Sala 3', 100);    
    INSERT INTO TB_Sala (Nm_Sala, Capacidade) VALUES 
    (3, 'Sala 4', 200);

    INSERT INTO TB_Sessao (ID_Filme, ID_Sala, Data_Horario) VALUES 
    (1, 1, '2024-05-20');   
    INSERT INTO TB_Sessao (ID_Filme, ID_Sala, Data_Horario) VALUES 
    (5, 4, '2024-05-22');    
    INSERT INTO TB_Sessao (ID_Filme, ID_Sala, Data_Horario) VALUES 
    (6, 1, '2024-10-08');    
    INSERT INTO TB_Sessao (ID_Filme, ID_Sala, Data_Horario) VALUES 
    (2, 2, '2025-09-22');    
    INSERT INTO TB_Sessao (ID_Filme, ID_Sala, Data_Horario) VALUES 
    (4, 3, '2025-08-10');

    INSERT INTO TB_Ingresso (ID_Sessao, Preco, Assento) VALUES 
    (1, 25.00, '10A');   
    INSERT INTO TB_Ingresso (ID_Sessao, Preco, Assento) VALUES 
    (2, 30.00, '3A');    
    INSERT INTO TB_Ingresso (ID_Sessao, Preco, Assento) VALUES 
    (3, 20.00, '6C');   
    INSERT INTO TB_Ingresso (ID_Sessao, Preco, Assento) VALUES 
    (4, 35.00, '15B');

END;
GO