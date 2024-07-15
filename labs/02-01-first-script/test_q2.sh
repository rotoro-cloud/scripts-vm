#!/bin/bash
bash -c "/home/moon/system_status.sh" | grep "All OK"

if [ $? -ne 0 ]; then
    echo "Скрипт не работает" && exit 1
fi

echo "Вопрос решен"