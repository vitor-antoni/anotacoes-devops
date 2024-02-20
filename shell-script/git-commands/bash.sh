#!/bin/bash

## BRANCH
git pull                                              # Baixa atualizações
git checkout {branchName}                             # Troca de branch
git checkout -b {newBranchName}                       # Cria branch nova
git add {modifiedFileName}                            # Adiciona o arquivo ao commit
git commit -m 'Commit message'                        # Cria o commit com mensagem
git push --set-upstream origin {currentBranchName}    # Envia atualizações
