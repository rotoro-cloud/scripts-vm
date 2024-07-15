#!/bin/bash

cat /home/moon/prepare-and-deploy | grep 'task_name=' \ 
&& cat /home/moon/prepare-and-deploy | grep '\$task_name'

if [ $? -ne 0 ]; then
    echo "В скрипте prepare-and-deploy не использована task_name как переменная" && exit 1
fi

echo "Вопрос решен"

bash /labs/03-01-variables/prepare_q2.sh