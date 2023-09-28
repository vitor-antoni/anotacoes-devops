#!/bin/bash

# Para explorar as inforamções da instância
curl http://169.254.169.254/latest/meta-data

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
