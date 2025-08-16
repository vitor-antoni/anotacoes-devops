#!/bin/bash
sudo yum install -y amazon-cloudwatch-agent
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard

# default - 1 (OS - linux)
# default - 1 (Host type - EC2)
# default - 1 (User - cwagent)
# no - 2 (StatsD - métrica personalizada)
# no - 2 (CollectD - métrica personalizada)
# default - 1 (Any Host mestrics - Métricas adicionais da EC2)
# default - 1 (CPU metrics per core - Métricas por núcleo)
# default - 1 (EC2 dimensions - InstanceId, InstanceType, ImageId)
# default - 1 (Aggregate ec2 dimensions - agregados de InstanceId)
# 1 segundo - 1 (Metric collection interval - intervalo de coleção de métricas)
# standard - 2 (Default metric level - Níveis de coleta de métrica)
# default - 1 (Satisfied with config - satisfação com a configuração)
# no - 2 (Any Existing CW Log Agent - Log de CW Agent automático)
# no - 2 (Monitor log files - monitoramento de arquivos de logs)
# no - 2 (X-ray traces - monitorar traços do X-ray)
# no - 2 (Save config in the SSM Parameter Store - Salvar a config no Parameter Store)

# Copiar o JSON Output para os arquivos JSON nos diretórios abaixo:
/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
/opt/aws/amazon-cloudwatch-agent/bin/config.json

systemctl restart amazon-cloudwatch-agent
systemctl status amazon-cloudwatch-agent
