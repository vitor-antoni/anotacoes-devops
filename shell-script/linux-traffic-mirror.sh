#!/bin/bash

## Configurar o espelhamento de tráfego
# Origem: interface de rede que está mandando solicitações
# Destino: interface de rede que está monitorando

# Porta UDP 4789

## Comandos para realizar na instância de monitoramento
# ip_privado da instância de monitoramento
ip link add vxlan0 type vxlan id 100 dev eth0 local {ip_privado} dstport 4789
ip link set vxlan0 up
tcpdump -lnvXi vxlan0 icmp