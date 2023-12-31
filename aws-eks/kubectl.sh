#!/bin/bash

# Para exibir informacoes sobre o cluster
kubectl get all -n {nomeNamespace}

# Criar configurações
kubectl create -f {path/para/o/arquivo} -n {nomeNamespace}

# Nodes
kubectl get nodes
kubectl describe nodes {nodeName}

# Namespace
kubectl create namespace oc-giropops                           ## Cria uma namespace chamada "oc-giropops"
kubectl get namespace                                          ## Lista todas as namespaces
kubectl config set-context --current --namespace=oc-giropops      ## Para tornar o namespace oc-giropops o namespace padrao

# Pods
kubectl get pods                 ## Exibir todos os pods na namespace padrão
kubectl get pods -n oc-giropops  ## Exibir todos os pods na namespace oc-giropops
kubectl get pods -A
kubectl get pods -A -o wide      ## Para saber em qual node está rodando e seu IP
kubectl describe pods {podName}  ## Informações a respeito de um pod
kubectl delete pods {podName}    ## Para deletar pods
kubectl exec -it {podName} -- bash        ## Executar comandos no POD
kubectl run {podName | nginxApp} --image {imageName | nginx} --port {port | 80}    ## Para rodar uma imagem de container
kubectl expose pod {podName | nginx} --type NodePort      ## Expoem a porta 80 do pod, usando a porta alta do node

# Deployment
kubectl edit deployment         ## Editar configurações de Deployment
kubectl get deployments         ## Mostra os deployments criados na namespace padrão
kubectl get deployments -n oc-giropops         ## Mostra os deployments criados na namespace oc-giropops
kubectl describe deployment {deploymentName}
kubectl delete deploy {deployName}   ## Para excluir um deploy
kubectl create deployment {deploymentName} --image {imageName | nginx} --replicas {ammount | 10}    ## Cria um deployment na namespace padrão/default
kubectl create deployment {deploymentName} --image {imageName | nginx} --replicas {ammount | 10} -n {namespaceName | oc-giropops}   ## Cria um deployment na namespace oc-giropops

# Service
kubectl edit service            ## Para editar o serviço
kubectl get service             ## Para listar os serviços

# Replicaset
kubectl get replicaset

# Replicationcontroller
kubectl get replicationcontroller
