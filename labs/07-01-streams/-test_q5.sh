#!/bin/bash

cat errors_warnings.txt | grep level=warning && cat errors_warnings.txt | grep level=error

if [ $? -ne 0 ]; then
    clear && echo 'Файл errors_warnings.txt не содержит событий уровня warning и error' && exit 1
fi

cat errors_warnings.txt | grep level=info | wc -l | grep 0

if [ $? -ne 0 ]; then
    clear && echo 'Файл errors_warnings.txt содержит события уровня info' && exit 1
fi

clear && echo "Вопрос решен"

bash /labs/07-01-streams/prepare_q3.sh