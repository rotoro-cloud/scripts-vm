#!/bin/bash

sh /home/moon/check_greater.sh 2 11 | grep 11 && sh /home/moon/check_greater.sh 91 26 | grep 91

if [ $? -ne 0 ]; then
    clear && echo 'Cкрипт не показывает число между аргументами $1 и $2' && exit 1
fi

clear && echo "Вопрос решен"