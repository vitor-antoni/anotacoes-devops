#!/bin/bash

# Copia os arquivos do bucket para a máquina {DOWNLOAD}
aws s3 cp s3://[url]/[path] {destino} --recursive

# Para copiar o arquivo da máquina para o S3 {UPLOAD}
aws s3 cp {origem} s3://[url]/[path]/[nomeDesejado] --recursive

# Par sincronizar o arquivo da máquina com o arquivo do S3 {UPLOAD} *Não envia todos arquivos
aws s3 sync {origem} s3://[url]/[path]/[nomeDesejado] # Não usa "--recursive"

# Para listar o bucket e seus arquivos
aws s3 ls s3://[url]

# Para remover arquivos do bucket
aws s3 rm [--recursive] s3://[url]

# Para mover arquivos do bucket
aws s3 mv s3://[url]
