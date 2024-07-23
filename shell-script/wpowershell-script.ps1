# Printa todas as rotas estáticas do Sistema Operacional / SO
route print | select-string <ip>


# Resolver um DNS no powershell
resolve-dnsName <dns_name>
nslookup <dns_name>

# Identificar quais as portas estão rodando no SO do Windows
netstat -ano | selec-string <port> 
