#!/bin/bash

bash /home/moon/starmail-greetings-message.sh | grep "Hello Rico and welcome to the interstellar message network system"

if [ $? -ne 0 ]; then
    clear && echo "Скрипт starmail-greetings-message.sh не работает" && exit 1
fi

clear && echo "Вопрос решен"

bash /labs/03-01-variables/prepare_q3.sh