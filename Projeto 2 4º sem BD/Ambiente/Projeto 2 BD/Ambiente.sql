DROP PROCEDURE IF EXISTS sp_Cinema_Ambiente;
GO
CREATE PROCEDURE sp_Cinema_Ambiente
AS
BEGIN

       DROP TABLE IF EXISTS TB_Ingresso;    
       DROP TABLE IF EXISTS TB_Sessao;   
       DROP TABLE IF EXISTS TB_Sala;
       DROP TABLE IF EXISTS TB_Filme;
       DROP TABLE IF EXISTS TB_Cliente;
       DROP TABLE IF EXISTS TB_Funcionario;


    CREATE TABLE TB_Cliente (
        ID_Cliente INT IDENTITY(1,1),
        Nm_Cliente VARCHAR(100) NOT NULL,
        Telefone VARCHAR(11) NOT NULL,
        Email VARCHAR(100) NOT NULL,
        CPF VARCHAR(11) NOT NULL,
        st_ativo CHAR(1) DEFAULT 'A',
      	PRIMARY KEY (ID_Cliente)
    );

CREATE TABLE TB_Funcionario (
        ID_Funcionario INT IDENTITY(1,1),
        Nm_Funcionario VARCHAR(100) NOT NULL,
        Telefone_Func VARCHAR(11) NOT NULL,
        Email_Func VARCHAR(100) NOT NULL,
        CPF_Func VARCHAR(11) NOT NULL,
        st_ativo CHAR(1) DEFAULT 'A',
      	PRIMARY KEY (ID_Funcionario)
);


    CREATE TABLE TB_Filme (
        ID_Filme INT IDENTITY(1,1),
        Nm_Filme VARCHAR(100) NOT NULL,
        Genero VARCHAR(50),
        Duracao INT,
        st_ativo CHAR(1) DEFAULT 'A',
      	PRIMARY KEY (ID_Filme)
    );

    CREATE TABLE TB_Sala (
        ID_Sala INT  IDENTITY(1,1),
        ID_Funcionario INT,
        Nm_Sala VARCHAR(100),
        Capacidade INT,
        st_ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (ID_Sala),
        FOREIGN KEY (ID_Funcionario) REFERENCES TB_Funcionario (ID_Funcionario)

    );

    CREATE TABLE TB_Sessao (
        ID_Sessao INT IDENTITY(1,1),
        ID_Filme INT NOT NULL,
        ID_Sala INT NOT NULL,
        Data_Horario DATE NOT NULL,
        st_ativo CHAR(1) DEFAULT 'A', 
      	PRIMARY KEY (ID_Sessao),
        FOREIGN KEY (ID_Filme) REFERENCES TB_Filme(ID_Filme),
        FOREIGN KEY (ID_Sala) REFERENCES TB_Sala(ID_Sala)
    );

    CREATE TABLE TB_Ingresso (
        ID_Ingresso INT IDENTITY(1,1),
        ID_Sessao INT NOT NULL,
        Preco NUMERIC(10, 2) NOT NULL,
        Assento VARCHAR(10),
        st_ativo CHAR(1) DEFAULT 'A',
      	PRIMARY KEY (ID_Ingresso),
		FOREIGN KEY (ID_Sessao) REFERENCES TB_Sessao(ID_Sessao)
    );

END;

GO
