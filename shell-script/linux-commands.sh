#!/bin/bash

# Criar alias
alias {word}={wordToRefer}
alias k8=kubectl

# YUM
yum info {packageName}    # Informações sobre packages
yum repolist              # Apresenta os repositórios existentes.
yum update                # Atualiza o repositório
yum upgrade -y            # Atualiza as packages

# Encontrar arquivo e excluir
find / -name {fileName} | xargs rm -rf

# Encontrrar palavra em arquivo recursivamente
grep -niR {diretorio}

# Acha palavra em arquivo ou lista
amazon-linux-extras list | grep {php}
