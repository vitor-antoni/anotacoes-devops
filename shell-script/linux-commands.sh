#!/bin/bash

# Criar alias
alias {word}={wordToRefer}
alias k8=kubectl

# APT
apt-get install {packageName} 
apt info {packageName} 
apt update

# Printa todas as rotas estáticas do Sistema Operacional / SO
ip route show | grep <cidr_range>

# YUM
yum install {packageName} 
yum info {packageName}    # Informações sobre packages
yum repolist              # Apresenta os repositórios existentes.
yum update                # Atualiza o repositório
yum upgrade -y            # Atualiza as packages

# Encontrar arquivo e excluir
find / -name {fileName} | xargs rm -rf *php

# Encontrrar palavra em arquivo recursivamente
grep -niR {diretorio}

# Acha palavra em arquivo ou lista
amazon-linux-extras list | grep {php}

# Reiniciar o ntp e realizar o sync de horario e data
sudo /etc/init.d/ntp stop
sudo /etc/init.d/ntp start

# Para alterar um palavra dentro de um arquivo
sed -i "s/{palavraAtual/novaPalavra/g" <nomeDoArquivo>
