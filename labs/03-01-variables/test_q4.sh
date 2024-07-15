#!/bin/bash

rm /home/moon/prepare-and-launch_bu; bash /home/moon/backup-file.sh && ls prepare-and-launch_bu

if [ $? -ne 0 ]; then
    echo "Скрипт backup-file.sh работает неверно" && exit 1
fi

echo "Вопрос решен"

bash /labs/03-01-variables/prepare_q5.sh