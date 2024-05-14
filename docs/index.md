# Cloud.ru Evolution Terraform Provider
Terraform позволяет быстро разворачивать и поддерживать инфраструктуру в облаке Cloud.ru Advanced с помощью конфигурационных файлов. Вы описываете в коде виртуальные машины, подсети, группы безопасности и другие облачные ресурсы в виде объектов с параметрами, а Terraform исполняет этот код и создает объекты инфраструктуры или обновляет их, если конфигурация изменилась. Такой подход ускоряет подготовку инфраструктуры и минимизирует ошибки, связанные с человеческим фактором.

Конфигурационные файлы пишутся на языке HCL, который поддерживает переменные, условия, циклы, функции и другие конструкции. Это позволяет использовать один конфигурационный файл для разных сред. Например, для тестовой и промышленной среды можно задавать разное количество воркеров Kubernetes® или виртуальных машин для фронтенда приложения.

Terraform полезен инженерам и администраторам, которые хотят упростить и автоматизировать управление большим количеством облачных ресурсов.

## Установка terraform

☝🏻Перед началом работы, убедитель что у Вас установлен terraform: [evo-terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli){target=_blank} 

## Установка провайдера

В рамках beta-тестирования, установка Terraform-провайдера Cloud.ru Evolution производится через File system mirror. В зависимости от архитектуры и ОС вашего компьютера, выберите нужный вариант.

### Mac(Apple)

Для скачивания текущей версии провайдера, выполните следующую команду:

``` bash
cd \
  curl --create-dirs -O --output-dir .terraform.d/plugins/cloud.ru/cloudru/cloud/0.1.0/darwin_arm64 \
  https://github.com/CLOUDdotRu/evo-terraform/releases/download/0.1.0/terraform-provider-cloud_0.1.0_darwin_arm64 \
  && chmod +x .terraform.d/plugins/cloud.ru/cloudru/cloud/0.1.0/darwin_arm64/terraform-provider-cloud_0.1.0_darwin_arm64
```

Далее, перейдите в каталог с вашими .tf файлами и выполните команду:

``` bash
terraform init
```

### Mac(Intel)

Для скачивания текущей версии провайдера, выполните следующую команду:

``` bash
cd \  
  && curl --create-dirs -O --output-dir .terraform.d/plugins/cloud.ru/cloudru/cloud/0.1.0/darwin_amd64 \
  https://github.com/CLOUDdotRu/evo-terraform/releases/download/0.1.0/terraform-provider-cloud_0.1.0_darwin_amd64 \
  && chmod +x .terraform.d/plugins/cloud.ru/cloudru/cloud/0.1.0/darwin_amd64/terraform-provider-cloud_0.1.0_darwin_amd64
```

Далее, перейдите в каталог с вашими .tf файлами и выполните команду:

``` bash
terraform init
```

### Linux(x64)

Для скачивания текущей версии провайдера, выполните следующую команду:

``` bash
cd \
  && curl --create-dirs -O --output-dir .terraform.d/plugins/cloud.ru/cloudru/cloud/0.1.0/linux_amd64 \
  https://github.com/CLOUDdotRu/evo-terraform/releases/download/0.1.0/terraform-provider-cloud_0.1.0_linux_amd64 \
  && chmod +x .terraform.d/plugins/cloud.ru/cloudru/cloud/0.1.0/linux_amd64/terraform-provider-cloud_0.1.0_linux_amd64
```

Далее, перейдите в каталог с вашими .tf файлами и выполните команду:

``` bash
terraform init
```

### Windows(x64)



☝🏻Исполняемые файлы провайдера доступны здесь: [evo-terraform](https://github.com/CLOUDdotRu/evo-terraform/releases){target=_blank} 


## Работа с IAM
С помощью Terraform можно добавлять новых пользователей и управлять их ролями. 

Управлять пользователями отдельного проекта или всего облака могут пользователи с соответствующими административными ролями.
Чтобы узнать подробнее о доступных действиях для каждой роли изучите статью [Роли](https://cloud.ru/ru/docs/administration/ug/topics/concepts__roles.html){target=_blank} 

## Работа с CloudPlatform
С помощью Terraform возможно создание и управление проектами. Проекты позволяют распределять облачные ресурсы между проектными задачами и командами. В каждом проекте можно подключать только нужные платформы и сервисы.

## Работа с Compute
Рабата с сервисом Compute через Terraform позволяет создавать и управлять виртуальными машинами различной конфигурации. Виртуальные машины — виртуальные серверы, развернутые на вычислительных ресурсах платформы виртуализации Evolution.

## Работа с Managed Kubernetes

Managed Kubernetes — сервис управления кластерами Kubernetes на вычислительных ресурсах облачной архитектуры Cloud.ru.
Сервис позволяет автоматизировать настройку и сопровождение контейнерной инфраструктуры, упростить развертывание приложений и обеспечить гибкое масштабирование. Можно быстро создать кластер и управлять им без ограничений с помощью Terraform.


