# Comando para assumir IAM role
aws sts assume-role --role-arn "arn:aws:iam::123456789012:role/NOME_DA_ROLE" --role-session-name "nome-da-sessao"

# Comandos para fechar (cancelar) a sessão
rm ~/.aws/credentials ; rm ~/.aws/config

# Remoçção de credenciais da IAM Role
## Powershell
Remove-Item Env:AWS_ACCESS_KEY_ID
Remove-Item Env:AWS_SECRET_ACCESS_KEY
Remove-Item Env:AWS_SESSION_TOKEN

## Linux
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_SESSION_TOKEN
