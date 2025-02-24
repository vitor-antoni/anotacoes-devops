#!/bin/bash

git log        # Log 
git pull       # Baixa atualizações
git stash      # Salva temporariamente alterações
git stash pop  # Recupera alterações salvas

git add {modifiedFileName}                            # Adiciona o arquivo ao commit
git commit -m 'Commit message'                        # Cria o commit com mensagem
git commit --amend                                    # Reescrever commit
git reset                                             # Cancela a adição dos arquivos
git push --set-upstream origin {currentBranchName}    # Envia atualizações

git checkout {branchName}                             # Troca de branch
git checkout -b {newBranchName}                       # Cria branch nova
git checkout {branchName} -- {workingFileDirectory}   # Descarta alterações e puxa o mesmo arquivo de outra Branch

git cherry-pick {commitId}                            # Baixa as alterações de um commit
git rebase -i HEAD~<numberOfCommits>                  # Altera título do commit antes de entrar na Master.

git fetch origin --all                                # Buscar as alterações em um repositório remoto
git rebase -i origin/master                           # Aplica as alterações do repositório remoto na branch atual
