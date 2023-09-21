# Para anexar o EFS em uma instância, será preciso editar
# o arquvio `/etc/fstab` e adicionar a linha a seguir

sudo yum install -y amazon-efs-utils
<endpoint_efs>:/ <diretorio_efs> nfs4 [nfsvers,rsize,wsize,hard,timeo,retrans],_netdev 0 0

# Após isso, feche o editor de texto e rode o código abaixo
# Senão possuir nenhum erro, não será apresentado nenhum prompt
mount -a

# Para verificar se o EFS foi anexado com sucesso, use o código abaixo
# Ele mostra todos os volumes, discos e partições montadas
df -h
