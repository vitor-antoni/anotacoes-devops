#!/bin/bash
sudo yum install -y amazon-cloudwatch-agent
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard

# default - 1
# default - 1
# default - 1
# no - 2
# no - 2
# default - 1
# default - 1
# default - 1
# default - 1
# default - 1
# standard - 2
# default - 1
# no - 2
# no - 2
# no - 2
# no - 2

# Copiar o JSON Output para os arquivos JSON nos diretórios abaixo:
/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
/opt/aws/amazon-cloudwatch-agent/bin/config.json

systemctl restart amazon-cloudwatch-agent
systemctl status amazon-cloudwatch-agent
