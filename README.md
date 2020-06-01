# Реализация CLI Яндекс.Облака для OneScript

## Информация
Библиотека предоставляет возможность взаимодействия с [CLI Яндекс.Облака](https://cloud.yandex.ru/docs/cli/) на языке OneScript.

## Установка

### CLI Яндекс.Облака

- [Установка CLI Яндекс.Облака](https://cloud.yandex.ru/docs/cli/quickstart#install)
- [Создание профиля CLI Яндекс.Облака и первоначальные настройки](https://cloud.yandex.ru/docs/cli/quickstart#initialize)

### OneScript

Для работы библиотеки необходимо **oscript-yacloud** предварительно установить [Стандартную библиотеку скриптов](http://oscript.io/library) 1Script.

#### Из исходников

1. Клонируйте репозиторий библиотеки:

    ```
    git clone https://github.com/aronmav/oscript-yacloud.git
    ```

2. Добавьте в конфигурационном файле 1Script `oscript.cfg` в список дополнительных библиотек путь к каталогу, в который вы клонировали репозиторий:

    ```
    lib.additional = C:\libs\oscript-yacloud;
    ```

#### Из пакетов opm

    opm install yacloud

## Использование


## License
[MIT](https://choosealicense.com/licenses/mit/).
Использование сервиса Платформы Яндекс.Облако регламентируется [Условиями использования сервиса "Платформа Яндекс.Облако"](https://yandex.ru/legal/cloud_termsofuse/) (https://cloud.yandex.ru/docs/cli/).