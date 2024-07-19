#!/bin/bash

rm /home/moon/stderr.txt /home/moon/stdout.txt

cat /home/moon/stdout.txt | grep 'This is a standard output'

if [ $? -ne 0 ]; then
    clear && echo 'Скрипт работает неверно выводит stdout' && exit 1
fi

cat /home/moon/stderr.txt | grep 'This is an error message'

if [ $? -ne 0 ]; then
    clear && echo 'Скрипт работает неверно выводит stderr' && exit 1
fi

clear && echo "Вопрос решен"

bash /labs/07-01-streams/prepare_q3.sh