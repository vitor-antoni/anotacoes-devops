#!/bin/bash

# Doc: https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

aws configure [set]

# Atualizar AWS CLI para 1.27
sudo yum remove -y awscli
sudo amazon-linux-extras install -y awscli1

# Instalar Kubectl - ec2-user | Amazon Linux 2
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.27.1/2023-04-19/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
kubectl version --short --client

# Update EKS config
aws eks update-kubeconfig --region {region} --name {clusterName}
