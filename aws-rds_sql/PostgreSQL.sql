-- Criar banco
create database <database_name>;

-- Criar usuário
create role <nome> with login password 'senha';

-- Conceder privilégios
grant all privileges on [database <database_name>] to <role_name>;

-- Revogar privilégios
revoke all privileges on [database <database_name>] from <role_name>;

-- Excluir usuário
drop role <role_name>;

-- Criar tabela
create table <table_name>(id serial primary key, <field>);

-- Inserir dados
insert into <table_name>(<fields>) values(<values>);

-- PostgreSQL Dump
pg_dump -h <hostname> -U <username> -W <database_name> >> pgdump.sql

-- PostgreSQL Restore
psql -h <hostname> -U <username> -W <database_name> < pgdump.sql