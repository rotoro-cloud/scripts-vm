#!/bin/bash

echo "harry" | sh -c "/home/moon/hello_name.sh" | grep harry

if [ $? -ne 0 ]; then
    echo 'Скрипт работает неверно' && exit 1
fi

echo "Вопрос решен"

bash /labs/03-02-input/prepare_q9.sh