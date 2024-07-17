#!/bin/bash

/home/moon/func-to-func.sh 3 3 | grep worker

if [ $? -ne 0 ]; then
    clear && echo 'Скрипт не работает как ожидалось' && exit 1
fi

clear && echo "Вопрос решен"

bash /labs/06-02-exitcodes/prepare_q6.sh