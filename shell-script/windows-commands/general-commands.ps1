# Printa todas as rotas estáticas do Sistema Operacional / SO
route print | select-string <ip>

# Obter IP público da instância
curl meuip.com/api/meuip.php

# Resolver um DNS no powershell
resolve-dnsName <dns_name>
nslookup <dns_name>

# Identificar quais as portas estão rodando no SO do Windows
netstat -ano | selec-string <port> 

# Cópia de arquivos via SCP
scp -o ProxyJump=<user>@<host> user@<targetServer>:/target/dir/file /local/dir
