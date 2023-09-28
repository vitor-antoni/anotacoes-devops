#!/bin/bash

## Para exibir todos os discos MONTADOS
df -h

## Para exibir todos as partições existentes
fdisk -l

## Para formatar o disco com o sistema de arquivo
mkfs.ext4 /dev/#disc

## Para montar o disco em um diretório
mkdir /#directory_name
mount /dev/disc /directory -t ext4
umount /dev/disc /directory

## Para anexar um volume EBS e mantê-lo montado
## sempre que a instância iniciar.

blkid /dev/<disc>      # UUID do disco

echo "UUID=<volumeUUID> /mnt/ebs ext4 defaults 0 2" >> /etc/fstab
