# Anotacoes

## Containers
Ambientes isolados, que executam pequenas tarefas (nao possuem SO).

## Docker Engine
Gerenciador de Containers de forma fácil.
Interface entre SO e containers.

## YAML
Configurações de containers para Docker e Kubernetes.

  ### Key value
  ```
  Fruta: Maca
  Vegetal: Cenoura
  ```

  ### Array/Lista
  ```
  Frutas:
    - Laranja
    - Maca
    - Banana
  ```

  ### Dicionario
  ```
  Banana:
    Calorias: 105
    Gorduras: 0.4 g
    Carboidratos: 27 g
  ```

## Introducao a Kubernetes
> Node sao computadores que tenham o Kubernetes instalado.
No node, criamos containers usando Docker.


### Pods
São instâncias lógicas e únicas de uma aplicação.
O Kubernetes nao gerencia o container diretamente, ele gerencia DIRETAMENTE O POD.

Relaçao POD:Container --> 1:1

Caso houver um grande tráfego em uma aplicação, o Kubernetes ele irá criar UM NOVO POD com um container IDÊNTICO para dividir a carga entre os dois PODS.

Se o Node não puder mais escalar PODS, o Kubernetes provisiona um outro Node.

### Replication Controller e ReplicaSets

  Os nomes dos pods que serão iniciados usando RC ou RS, terão os mesmos nomes especificados para o RC e RC.

  ### Replication Controller
  Gerenciador de PODS com verificações de integridade.
  Se o POD falhar, ele replica nosso POD automaticamente.
  Similar ao ELB e ASG.

  * Ferramenta mais antiga


  ### Replicaset
  Gerenciador de PODS mais novo e com novas funcionalidades.
  Você pode usar quase a mesma sintaxe do RC, mas deverá especificar `apps/v1` em "apiVersion", poderá especificar o número de réplicas e poderá especificar um campo "selector" após o campo "template" para que ele COPIE exatamente a configuração de um container visando o campo "label" (pode especificar `matchLabels: type: ...`)

### Deployments
Atualizar um pod por um até que todos sejam atualizados
"Rolling updates"

### Namespaces
Espaço onde separamos nossos recursos.
/* Namespace FrontEnd e BackEnd. */
Nao especificar o Namespace, sera criado no namespace padrao/default.

### Nodeport
Nodepot é a porta que sai do navegador web cliente e chega no NODE.
Range de portas: 30000 - 32767
