# Seja ninja no Kubernetes e provisionamento nas nuvens - EKS

Neste conjunto de atividades você será guiado em uma série de tarefas para aprender mais sobre EKS.
 
Através das tarefas práticas você vai treinar diferentes cenários com base no dia a dia de um SRE/Devops/Sysadmin.

## Ajudas

### Teorias-necessarias


A seguir você tem acesso a uma série de materiais teóricos que visam fornecer a base mínima necessária de conteúdo para a realização deste grupo de atividades. 

#### O que é eks

[Video: O que é eks]()

#### Workflow de criação de um cluster eks

[Video: Workflow de criação de um cluster eks]()

#### Tipos de workers

[Video: Tipos de workers]()

#### O que é vpc

[Video: O que é vpc]()

### O que é subnet

[Video: O que é subnet]()

### O que é nat gateway

[Video: O que é nat gateway]()

### O que é internet gateway

[Video: O que é internet gateway]()

### Criando uma vpc e subnets e outras coisinhas a mais

[Video: Criando uma vpc e subnets e outras coisinhas a mais]()

### Criando um cluster eks

[Video: Criando um cluster eks]()

### Adicionando workers gerenciados a um cluster

[Video: Adicionando workers gerenciados a um cluster]()

### Adicionando workers auto gerenciados a um cluster

[Video: Adicionando workers auto gerenciados a um cluster]()

### Adicionando workers fargate a um cluster

[Video: Adicionando workers fargate a um cluster]()


#### Cluster bom é cluster barato

O time de SRE recebeu o seguinte ticket para resolução:

```
Olá pessoal, aqui é a Mary Jane do marketing.

Nós estamos com uma necessidade de validar uma nova aplicação e precisamos que seja executada em um cluster
Kubernetes (diretriz da área) =). 

O que posso dizer dessa app é que será utilizada por nossos clientes internos e serve para executar algumas rotinas, como parsear alguns dados de leads. Não é algo ultra crítico, porque sempre que ela for executada, se auto atualizará e fará somente o necessário. 

Neste link está a especificação da aplicação a ser executada: 

https://raw.githubusercontent.com/zup-academy/curso-eks/master/playground/yamls/awesomebatchjob.yaml

Ah, o time está com o budget curto para essa aplicação, seria legal se tivesse um custo bem acessível. 

Obrigada, 

MJ.
```

## learning-tasks

### imitation: Assista o vídeo e aprenda como criar um cluster barato e eficiente.

Assista o vídeo a seguir e acompanhe a resolução fornecida pelo especialista a solicitação acima. 

[[Video: Cluster bom é cluster barato]()

### completion: Quase pronto para execução

A partir do projeto base disponível neste [aqui](playground/quase_pronto_para_execucao). 

Complete a implementação deixando um cluster EKS "up", seus Workers como "Ready" e aptos a receberem cargas de trabalho.

### conventional: Cluster bom é cluster barato: O retorno

O time de SRE recebeu essa solicitação, dessa vez, pelo time de people:

```
Precisamos executar uma rotina que o fornecedor nos passou para validar alguns dados e me falaram que deveria ser em um Kubernetes, ou algo assim. 

Essa rotina é executada poucas vezes durante o dia, e tem dia que nem executada é. O rapaz da TI do nosso 
fornecedor enviou um link com o programa a ser executado, o link é esse:

https://raw.githubusercontent.com/zup-academy/curso-eks/master/playground/yamls/anotherawesomebatchjob.yaml

Estamos otimizando os recursos aqui no setor e não dispomos de muito orçamento para essa atividade, então
o que puder enxugar ai do seu lado, mande bala.
```

Cabe a você estudante, construir a solução apropriada para o ticket.

