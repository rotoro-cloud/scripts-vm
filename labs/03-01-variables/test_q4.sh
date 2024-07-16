#!/bin/bash

rm /home/moon/prepare-and-deploy_bu; bash /home/moon/backup-file.sh && ls prepare-and-deploy_bu

if [ $? -ne 0 ]; then
    clear && echo "Скрипт backup-file.sh работает неверно" && exit 1
fi

clear && echo "Вопрос решен"

bash /labs/03-01-variables/prepare_q5.sh