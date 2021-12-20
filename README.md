# Seja ninja no Kubernetes e provisionamento nas nuvens - EKS

Neste conjunto de atividades você será guiado em uma série de tarefas para aprender mais sobre EKS.
 
Através das tarefas práticas você vai treinar diferentes cenários com base no dia a dia de um SRE/Devops/Sysadmin.

## Ajudas

### Teorias-necessarias


A seguir você tem acesso a uma série de materiais teóricos que visam fornecer a base mínima necessária de conteúdo para a realização deste grupo de atividades. 

#### O que é eks

[Video: O que é eks](https://youtu.be/aC9NrrkhSQc)

#### Workflow de criação de um cluster eks

[Video: Workflow de criação de um cluster eks](https://youtu.be/qx_C2xBgyJg)

#### Tipos de workers

[Video: Tipos de workers](https://youtu.be/v3aO9QuO_s4)

#### O que é vpc

[Video: O que é vpc](https://youtu.be/D4Fb2IAo3IE)

### O que é subnet

[Video: O que é subnet](https://youtu.be/mMXA_PshNp0)

### O que é nat gateway

[Video: O que é nat gateway](https://youtu.be/coTiUAxWUKQ)

### O que é internet gateway

[Video: O que é internet gateway](https://youtu.be/liLx8WzT6qs)

### Criando uma vpc e subnets e outras coisinhas a mais

[Video: Criando uma vpc e subnets e outras coisinhas a mais](https://youtu.be/im9ozFQW0rU)

### Criando um cluster eks

[Video: Criando um cluster eks](https://youtu.be/2X5jeOFytG8)

### Adicionando workers gerenciados a um cluster

[Video: Adicionando workers gerenciados a um cluster](https://youtu.be/LAWEvu4mOBM)

### Adicionando workers auto gerenciados a um cluster

[Video: Adicionando workers auto gerenciados a um cluster](https://youtu.be/IS4vDByYFCU)

### Adicionando workers fargate a um cluster

[Video: Adicionando workers fargate a um cluster](https://youtu.be/MLJMqhUz328)

### O que é metrics server

[O que é metrics server](https://youtu.be/UMnOKvifDL8)

### O que é cluster autoscaler

[Video: O que é cluster autoscaler](https://youtu.be/25aoFF0G-qs)

### O que é (irsa) IAM Roles for Service Accounts

[O que é (irsa) IAM Roles for Service Accounts](https://youtu.be/9GYf2bkqYOc)

#### task class 01: Cluster bom é cluster barato 

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

[Video: Cluster bom é cluster barato](https://youtu.be/JPwrESdAkFA)

### completion: Quase pronto para execução

A partir do projeto base disponível [aqui](playground/cluster_bom_e_cluster_barato), complete a implementação deixando um cluster EKS "up", seus Workers como "Ready" e aptos a receberem cargas de trabalho.

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

#### task class 02: Crescei e multiplicai-vos


O time de SRE recebeu o seguinte ticket para resolução:

```
Precisamos de dois ambientes kubernetes para desenvolvimento e teste de uma nova aplicação. Algumas caracteristicas:

* ambiente de dev e qa
* Baixo custo
* Nenhum dado é armazenado do lado do servidor
* Os ambientes precisam ser idênticos e em redes segmentadas
```

## learning-tasks

### imitation: Assista o vídeo e aprenda como criar clusters iguais para ambientes distintos

Assista o vídeo a seguir e acompanhe a resolução fornecida pelo especialista a solicitação acima. 

[Video: Crescei e multiplicai-vos](https://youtu.be/_sxa-OW9ofA)

### completion: Quase pronto para execução

A partir do projeto base disponível [aqui](playground/crescei_e_multiplicai_vos), complete a implementação deixando os clusters EKS "up", seus Workers como "Ready" e aptos a receberem cargas de trabalho.

### conventional: Crescei e multiplicai-vos

O time de SRE recebeu o seguinte ticket para resolução:

```
Precisamos de três ambientes kubernetes para desenvolvimento e teste de uma nova aplicação. Algumas caracteristicas:

* ambiente de dev, qa e pre
* Baixo custo para dev e qa, em pre eu preciso que ele esteja disponível sempre para alguns clientes testarem as aplicações. 
* Cada ambiente em uma rede distinta
```

Cabe a você estudante, construir a solução apropriada para o ticket.

#### task class 03: Pronto para produção

O time de SRE recebeu o seguinte ticket para resolução:

```
Olá,

Precisamos de um ambiente produtivo para uma nova aplicação, essa aplicação lidará com pagamento instantâneo,
em alguns momento poderá ter um consumo excessivo e outros momentos, não.
Para seguir o SLA, ela precisa lidar muito bem com falhas.
```

## learning-tasks

### imitation: Assista o vídeo e aprenda como criar um cluster Pronto para produção

Assista o vídeo a seguir e acompanhe a resolução fornecida pelo especialista a solicitação acima. 

[Video: Pronto para produção](https://youtu.be/Pqh0lmAa6as)

### completion: Quase pronto para execução

A partir do projeto base disponível [aqui](playground/pronto_para_producao), complete a implementação deixando os clusters EKS "up", seus Workers como "Ready" e aptos a receberem cargas de trabalho.

### conventional: Muito pronto para produção

O time de SRE recebeu o seguinte ticket para resolução:

```
Olá,

Precisamos de um ambiente produtivo para algumas api's que estamos finalizando o desenvolvimento. Como iremos cobrar pelo
uso, devemos mante-la disponível o maior tempo possível.
```

Cabe a você estudante, construir a solução apropriada para o ticket.


#### task class 04: Olá Janelas

O time de SRE recebeu o seguinte ticket para resolução:

```
Estamos evoluindo uma aplicação monolítica e para isso precisamos de um cluster kubernetes para executar alguns serviços em .net que estamos desenvolvendo.

O Manifesto com a aplicação pode ser obtida no link:

https://raw.githubusercontent.com/zup-academy/curso-eks/master/playground/yamls/windows-server-iis.yaml
```

## learning-tasks

### imitation: Assista o vídeo e aprenda como criar um cluster Pronto para produção

Assista o vídeo a seguir e acompanhe a resolução fornecida pelo especialista a solicitação acima. 

[Video: Olá Janelas](https://youtu.be/ay59ALg9ZvM)

### completion: Quase pronto para execução

A partir do projeto base disponível [aqui](playground/ola_janelas), complete a implementação deixando os clusters EKS "up", seus Workers Windows como "Ready" e aptos a receberem cargas de trabalho.

### conventional: Olá Janelas

O time de SRE recebeu o seguinte ticket para resolução:

```
Precisamos de um cluster kubernetes para executar uma aplicação em .net que estamos desenvolvendo. Ambiente dev e hmg.
```

Cabe a você estudante, construir a solução apropriada para o ticket.
