#!/bin/bash

bash limits.sh 2>&1 | wc -l | grep 1

if [ $? -ne 0 ]; then
    clear && echo 'Скрипт не работает как предполагалось' && exit 1
fi

clear && echo "Вопрос решен"

