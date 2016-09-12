# **AWS EC2 Container Service**

## *Passo a Passo - Código*

1. Passar os arquivos principais da aplicação para uma outra pasta dentro do arquivo principal.
![Antes da mudança](/images-MD/Antes-APP.png)    ![Seta](/images-MD/right_arrow.png)    ![Depois da mudança](/images-MD/Depois-APP.png)

2. Criar um __*[script](https://github.com/Strund3r/ECS_test/blob/master/run.sh)*__ para rodar a aplicação dentro do container.

3. Atualizar o __*[Dockerfile](https://github.com/Strund3r/ECS_test/blob/master/Dockerfile)*__ com os comandos para rodar o __*[script](https://github.com/Strund3r/ECS_test/blob/master/run.sh)*__.

4. Atualizar o __*[docker-compose.yml](https://github.com/Strund3r/ECS_test/blob/master/docker-compose.yml#L17)*__ removendo o comando de execução do container Web.

## *Passo a Passo - ECS*

1. Criar uma instância __*[ECS](https://console.aws.amazon.com/ecs/home?region=us-east-1#/firstRun)*__ e configurar o repositório no EC2 Container Registry.

2. Pegar os comandos fornecidos e criar um __*[script (ECS)](https://github.com/Strund3r/ECS_test/blob/master/ecs_push.sh)*__ ( __*[script (DockerHub)](https://github.com/Strund3r/ECS_test/blob/master/docker_push.sh)*__ )
![ECS Registry Commands](/images-MD/ecs-reg.png)

3. Após finalizar o push, instalar e configurar o ECS-CLI no terminal:
```
$ sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
```
```
$ ecs-cli --version
```
```
$ sudo chmod +x /usr/local/bin/ecs-cli
```
```
$ ecs-cli configure --region us-east-1 --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY --cluster default
```

4. Após a configuração, criar um Task Definition:
```
$ ecs-cli compose create
```

5. Acessar o [painel do ECS](https://console.aws.amazon.com/ecs/home?region=us-east-1#/clusters/default/services) e criar um novo serviço:
![Serviço](/images-MD/serviço.png)
e configurar Load Balancing e Auto Scaling
![Config ELB e Auto Scaling](/images-MD/config-elb-as.png)
