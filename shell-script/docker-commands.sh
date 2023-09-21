#!/bin/bash

# Comandos Imagem
docker image ls
docker image build -t <imageName> .   ### "." --> diretório atual
docker image tag <imageName> <imageTag>
docker image rm <imageName>
docker image pull <imageName>
docker image push <ecrURI> ### A imagem a ser enviada, precisa ter a TAG do URI do repositório

# Comandos Container
docker container ls
docker container ps -a
docker container run -d -p 80:80 --name <containerName> <imageName>  ### "-d" --> deamon  "-p" --> port
docker container exec -it <containerID/name> bash
docker container cp <source> <target>

# docker container cp {containerID/name}:/var/www/html/ app
# docker container cp app/ {containerID/name}:/var/www/html

docker container stop <containerID/name>
docker container prune

# Criar imagem
- Dockerfile

```
FROM nginx
COPY html /usr/share/nginx/html
```

### COPY . (diretorio atual, copiará o DockerFile também)
