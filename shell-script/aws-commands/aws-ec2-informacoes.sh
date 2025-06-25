#!/bin/bash

# Para consultar informações sobre instãncias usamos o IMDS
# e existem duas versões, para atualizá-la, acesse as seguintes opções
# Actions > Instance Settings > Modify instance metadata options

# Para explorar as inforamções da instância se IMDSv1
curl http://169.254.169.254/latest/meta-data

# Para explorar as inforamções da instância se IMDSv2
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
curl -H "X-aws-ec2-metadata-token: $TOKEN" 169.254.169.254/latest/meta-data/

# Exemplo de capturação de informação do ID da instância.
INSTANCE_ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)

# Buscar usuário IAM da instancia
aws sts get-caller-identity

# ami-id
# ami-launch-index
# ami-manifest-path
# block-device-mapping/
# events/
# hostname
# instance-action
# instance-id
# instance-life-cycle
# instance-type
# local-hostname
# local-ipv4
# mac
# metrics/
# network/
# placement/availability-zone
# profile
# public-hostname
# public-ipv4
# reservation-id
# security-groups
# services/domain
