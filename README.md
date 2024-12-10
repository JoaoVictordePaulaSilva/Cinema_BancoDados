# 🎥 Projeto de Banco de Dados para Cinema
Este repositório contém o desenvolvimento de um banco de dados em MS SQL Server para gerenciar os processos de um cinema. O objetivo do projeto é oferecer uma solução eficiente para automação e controle de informações relacionadas a filmes, sessões, ingressos e salas.

# 📝 Descrição do Projeto
O banco de dados foi projetado para atender às necessidades de um cinema moderno, permitindo:

* Gerenciamento de filmes: Cadastro de informações detalhadas sobre os filmes exibidos.
* Controle de sessões: Agendamento e consulta das sessões de filmes, incluindo horários e salas.
* Gestão de ingressos: Registro de vendas e disponibilidade de ingressos.
* Administração de salas: Configuração de salas com capacidade e recursos.

A estrutura foi desenvolvida com foco em eficiência e escalabilidade, permitindo futuras expansões, como integração com sistemas de reservas online.

# 🛠️ Tecnologias Utilizadas
Microsoft SQL Server: Para criação e gerenciamento do banco de dados.
Git: Para versionamento do código SQL.
# 📂 Estrutura do Repositório
O repositório está organizado da seguinte forma:

* Ambiente.sql: Script para criação do ambiente inicial e tabelas.
* CargaInicial.sql: Dados iniciais para popular o banco.
* Insert.sql: Inserções de dados adicionais.
* Update.sql: Scripts para atualização de registros.
* Delete.sql: Exclusão de dados conforme necessidade.
* Select.sql: Consultas genéricas.
* SelectEspec.sql: Consultas específicas e detalhadas.
* SelectMapa.sql: Consultas para mapear relações, como sessões por salas.
* Execuções.sql: Procedimentos armazenados e funções para otimizar operações.
# ⚙️ Funcionalidades Principais
Cadastro de filmes com informações como título, duração, gênero e status (ativo/inativo).
Gerenciamento de sessões: associação de filmes às salas, definição de horários e status.
Gestão de ingressos: controle de vendas e emissão de relatórios de lotação.
Administração de salas: capacidade, tipo de sala (2D, 3D, 4D) e disponibilidade.
# 📊 Modelo de Dados
O banco de dados é composto por tabelas principais, como:

Tb_Cinema: Informações do cinema.
Tb_Filme: Detalhes dos filmes.
Tb_Sala: Configuração das salas de exibição.
Tb_Sessao: Registro das sessões.
Tb_Ingresso: Venda e controle de ingressos.
