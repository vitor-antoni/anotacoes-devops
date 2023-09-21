#!/bin/bash

cat /etc/passwd     ## exibe os usuários do sistema
cat /etc/group      ## exibe os grupos do sistema
cat /etc/shadow     ## exibe as senhas

sudo adduser <username>   ## criar usuário
sudo deluser <username>   ## deletar usuário

sudo addgroup <group_name>    ## criar grupo
sudo delgroup <group_name>    ##  deletar grupo

sudo adduser <username> <group_name>   ## adicionar usuário a grupo
sudo deluser <username> <group_name>   ## deletar usuário do grupo

chown <username> <file_name>    ## alterar proprietário do arquivo
chgrp <groupname> <file_name>   ## alterar o grupo do arquivo
chmod <permision> <file_name>   ## alterar a permissão do arquivo

## PARA PERMISSÕES AVANÇADAS ##
sudo setfacl -m (u/g):(username/groupname):<permision> <file_name>
sudo setfacl -x (u/g):(username/groupname) <file_name>  ## remover

getfacl <file_name>             ## exibir as permissões

## PARA BACKUP DE PERMISSÕES ##
getfacl -R empresa > permissao.bkp
setfacl --restore permissao.bkp
