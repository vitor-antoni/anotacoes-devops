#!/bin/bash

# Criar alias
alias {word}={wordToRefer}
alias k8=kubectl

# YUM
yum info {packageName}    # Informações sobre packages
yum repolist              # Apresenta os repositórios existentes.
yum update                # Atualiza o repositório
yum upgrade -y            # Atualiza as packages
