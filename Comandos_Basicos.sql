
--Cria um Banco de dados
CREATE DATABASE auladb;

--Remove um Banco de dados
DROP DATABASE auladb;


--Administra (user/roles/groups)

--Cria uma ROLE
CREATE ROLE administradores
    CREATEDB
    CREATEROLE
    INHERIT
    NOLOGIN
    REPLICATION
    BYPASSRLS
    CONNECTION LIMIT -1;

CREATE ROLE professores
    NOCREATEDB
    NOCREATEROLE
    INHERIT
    NOLOGIN
    NOBYPASSRLS
    CONNECTION LIMIT 10;

CREATE ROLE alunos
    NOCREATEDB
    NOCREATEROLE
    INHERIT
    NOLOGIN
    NOBYPASSRLS
    CONNECTION LIMIT 90;

CREATE ROLE fernando
    LOGIN
    CONNECTION LIMIT 1
    PASSWORD '123'
    IN ROLE professores;
--ROLE fernando assume as permissões de professores

CREATE ROLE fernando
    LOGIN
    CONNECTION LIMIT 1
    PASSWORD '123'
    IN ROLE professores;
--ROLE daniel assume as permissões de professores




--Cria uma tabela
CREATE TABLE cliente(
    id int not null ,
    nome varchar(200) null ,
    primary key (id)
    );