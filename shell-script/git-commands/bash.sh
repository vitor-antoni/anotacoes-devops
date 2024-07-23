#!/bin/bash

git log                                               # Log 
git pull                                              # Baixa atualizações
git add {modifiedFileName}                            # Adiciona o arquivo ao commit
git commit -m 'Commit message'                        # Cria o commit com mensagem
git push --set-upstream origin {currentBranchName}    # Envia atualizações
git checkout {branchName}                             # Troca de branch
git checkout -b {newBranchName}                       # Cria branch nova
git checkout {branchName} -- {workingFileDirectory}   # Descarta alterações e puxa o mesmo arquivo de outra Branch
git cherry-pick {commitId}                            # Baixa as alterações de um commit
git rebase -i HEAD~<numberOfCommits>                  # Altera título do commit antes de entrar na Master.
