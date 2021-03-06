## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Description](#description)

## General info
Домашнее задание - модуль 5 проект 1.

## Technologies
Project is created with:
* Docker
* Docker compose version: 1.27.4

## Setup

```bash
git clone git@github.com:iasoloviev61/sf__module5_pr1.git
```

## Description

Утилита делает зеркало всех языковых версий статьи  [Как эффективно сообщать об ошибках](https://www.chiark.greenend.org.uk/~sgtatham/bugs.html)

Используется docker и docker-compose, эти утилиты должны быть установлены на сервере перед запуском.

Для просмотра используется адрес и порт: http://you-domain:8800, где you-domain - доменное имя вашего сервера.

make init_project - старт проекта, копирует все версии статьи, запускает веб сервер.

make start_server - запускает веб сервер

make stop_server - останавливает веб сервер

make getpages - синхронизирует зеркало(заново скачивает все страницы)

make getpage_lang L=ru - скачивает статью на выбраном языке

Доступны следующие языки:\\
```
'br' 'cn' 'cz' 'da' 'de' 'es' 'fr' 'hu' 'it' 'jp' 'nl' 'pl' 'ru' 'tw'
```

В файле c cron_root запись, которую нужно доабвить в свой cron для запуска обновления зеркала раз в неделю по субботам в 3:45
