-- Criar banco
create database <database_name>;

-- Criar usuário
create user '<username>'@'%' identified by '<password>';

-- Conceder privilégios
grant all privileges on <databaseName>.<table_name> to <username>@<hostname>;

-- Revogar privilégios
revoke all privileges from <username>@<hostname>;

-- Excluir usuário
drop user <username>@<hostname>

-- Criar tabela
create table <table_name>(id int primary key auto_increment, <fields>);

-- Inserir dados
insert into <table_name>(<fields>) values(<values>);

-- MySQL Dump
mysqldump <database-name> -h <hostname> -u <username> -p > arquivo.sql

-- MySQL Restore
mysql -h <hostname> -u <username> -p <dabatase-name> < arquivo.sql

-- Altera dados
update <table_name> set <column>=<field> where id=<id>
