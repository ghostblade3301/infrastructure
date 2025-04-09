## Установка Terraform

- Скачать [terraform](https://hashicorp-releases.yandexcloud.net/terraform/)
- Разместить бинарный файл в /bin или /usr/local/bin
- Теперь необходимо добавить возможность исполнять его 
```
sudo chmod u+x /usr/local/bin/terraform
```

## Запуск виртуальной машины

- Клонируем [репозиторий](https://gitlab.praktikum-services.ru/std-026-35/infrastucture)
- В корне проекта в файле metadata.txt в опцию ssh_authorized_keys подставляем свой публичный ключ
- Переходим в каталог terraform
- Инициализируем terraform
```
terraform init
```
- Проверяем конфигурацию
```
terraform validate
```
- Создадим план конфигурации
```
terraform plan
```
- Запускаем виртуальную машину
```
terraform apply
```

## Результат работы
После успешного запуска виртуальной машины в консоль будет выведено два ip адреса: внешний и внутренний
по которым можно будет войти в помошью клиента ssh





