#!/bin/bash
# exec "$0" "$@"
set -e  # Остановить выполнение при ошибке
# set -u  # Остановить выполнение при использовании необъявленной переменной

# if [ "$#" -gt 0 ]; then
#     echo "Дополнительные команды не разрешены!"
#     exit 1
# fi
# Проверка аргументов
# for arg in "$@"; do
#     if [[ "$arg" == *";"* ]]; then
#         echo "Invalid argument containing semicolon"
#         exit 1
#     fi
# done

echo "Выберите опцию:"
echo "1) Ping"
# echo "2) ...
# echo "3) ...
echo "4) Выход"

read -p "Введите номер опции: " option

if [ "$option" -eq 1 ]; then
    read -p "Введите адрес IP-адрес или веб-хост: " ip
    if [[ "$ip" =~ ^(127\.0\.0\.1|0\.0\.0\.0|255\.0\.0\.1|10\.10\.0\.1|192\.168\.1\.256)$ ]]; then
    echo "Данный IP-адрес заблокирован."
    exit 1
    else
    echo "IP-адрес допустим."
    fi
    if ping -c 1 $ip ; then 
    echo "Успех"
    else 
    echo "Ошибка"
    fi
exit 1
# elif [ "$option" -eq 2 ]; then
#     echo "Список файлов:"
#     ls
# elif [ "$option" -eq 3 ]; then
#     echo "Информация о системе:"
#     uname -a
elif [ "$option" -eq 4 ]; then
    echo "Выход из программы."
    exit 1
else
    echo "Неверный выбор. Пожалуйста, попробуйте снова."
fi
exit 0