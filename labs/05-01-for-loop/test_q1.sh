#!/bin/bash

sh -c "export PATH=$PATH:/home/moon; labtest multi-launch.sh" | awk -v RS='^$' 'END{exit !(index($0,"success") && index($0,"db-subsystem") && index($0,"backend") && index($0,"frontend") && index($0,"load-balancer") && index($0,"monitoring"))} '

if [ $? -ne 0 ]; then
    clear &&  echo "Скрипт не работает как ожидалось" && exit 1
fi

cat /home/moon/multi-launch.sh | grep for

if [ $? -ne 0 ]; then
    clear &&  echo "Скрипт не использует for" && exit 1
fi


clear && echo "Вопрос решен"

bash /labs/03-01-variables/prepare_q2.sh