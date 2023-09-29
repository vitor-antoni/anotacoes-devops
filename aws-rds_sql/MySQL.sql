-- MySQL Dump
mysqldump <database-name> -h <hostname> -u <username> -p > arquivo.sql

-- MySQL Restore
mysql -h <hostname> -u <username> -p <dabatase-name> < arquivo.sql

-- Criar banco
CREATE database <database_name>;

-- Criar tabela
CREATE TABLE <table_name>(id int primary key auto_increment, <fields>);

-- Inserir dados
INSERT INTO <table_name>(<fields>) VALUES(<values>);

-- Altera dados
UPDATE <table_name> SET <column>=<field> WHERE id=<id>

-- Criar novas colunas
ALTER TABLE <table_name> ADD <newColumn> INT AFTER <someColumn>;

-- Criar usuário
CREATE USER '<username>'@'%' identified BY '<password>';

-- Conceder privilégios
GRANT all privileges ON <databaseName>.<table_name> TO <username>@<hostname>;

-- Revogar privilégios
REVOKE all privileges FROM <username>@<hostname>;

-- Excluir usuário
DROP USER <username>@<hostname>

-- ======= PRIVILEGIOS ======= --
[ ALL PRIVILEGES | ALTER | ALTER | CREATE | CREATE USER | CREATE VIEW | DELETE | DROP | EXECUTE | INSERT | SELECT | SHOW DATABASES | UPDATE | ]
