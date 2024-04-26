Задача 5
Напишите скрипт для мониторинга портов, открытых на удаленной машине. Для этого используйте утилиту nc.

## Описание скрипта

Скрипт port.sh проверяет доступность портов на указанном хосте.

## Как использовать

1. Запустите скрипт `bash port.sh`
  
2. Введите IP-адрес или имя хоста.

3. Введите список портов для проверки, разделённых пробелами.

## Что делает скрипт

- Получает имя хоста или IP-адрес и список портов для проверки.
- Перебирает каждый порт из списка.
- Проверяет доступность порта с помощью команды nc.
- Выводит результат проверки для каждого порта.

## Ограничения

- Скрипт предполагает, что порты доступны только на одном хосте.
- Скрипт не проверяет безопасность соединения.

