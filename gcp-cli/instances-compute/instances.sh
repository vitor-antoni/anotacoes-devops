#!/bin/bash

# Para criar uma máquina a partir de uma Imagem de máquina em outro projeto
# Útil para cenários de DR (Dister Recovery)
# Ref https://cloud.google.com/sdk/gcloud/reference/compute/instances/create
gcloud compute instances create {vmName} \
--project={project} \
--zone={zone} \
--source-machine-image=projects/{project}/global/machineImages/{amiID} \
--service-account={accountEmail} \
--network-interface network={vpcName},subnet=back-wan \
--network-interface network={vpcName},subnet=back-lan,external-ipv4-address=no-address

# Para resetar senha de uma máquina Windows
# Ou criar um novo usuário local
gcloud compute reset-windows-password {vmNAME}
