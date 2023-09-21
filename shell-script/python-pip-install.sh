#!/bin/bash

# para baixar o interpretador Python
sudo apt-get install python -y
sudo yum install python -y

# Baixar arquivo de instalação do PIP
curl https://bootstrap.pypa.io/get-pip.py .
py get-pip.py

# Para baixar bibliotecas
pip install {libraryName}

# Para Windows
py -m pip install {librabryName}
