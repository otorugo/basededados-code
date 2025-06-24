-- drop_all_tables.sql
-- Este script exclui todas as tabelas no esquema, se existirem,
-- seguindo a ordem correta de dependências para chaves estrangeiras.

DROP TABLE IF EXISTS Pagamento CASCADE;
DROP TABLE IF EXISTS Mensagem CASCADE;
DROP TABLE IF EXISTS Avaliacao CASCADE;
DROP TABLE IF EXISTS Matricula CASCADE;
DROP TABLE IF EXISTS OfertaDisciplina CASCADE;
DROP TABLE IF EXISTS Disciplina CASCADE;
DROP TABLE IF EXISTS Curso CASCADE;
DROP TABLE IF EXISTS Departamento CASCADE;
DROP TABLE IF EXISTS Aluno CASCADE;
DROP TABLE IF EXISTS Professor CASCADE;
DROP TABLE IF EXISTS Funcionario_Administrativo CASCADE;
DROP TABLE IF EXISTS Usuario CASCADE;
DROP TABLE IF EXISTS Unidade CASCADE;
