#!/bin/bash


# Lista todas as políticas existentes na conta
aws iam list-policies

# Lista informações sobre uma política existente
aws iam get-policy --policy-arn [policy-arn]

# Lista todos os usuários existentes na conta
aws iam list-users

# Realiza o login com Single Sign On puxando o profile do arquivo "config"
aws sso login --profile [profile_name]
