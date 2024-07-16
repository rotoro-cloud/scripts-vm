#!/bin/bash

usermod -s /bin/bash moon

/home/moon/change_shell.sh moon /bin/sh && grep moon /etc/passwd | grep bin/sh

if [ $? -ne 0 ]; then
    echo 'Скрипт работает неверно' && exit 1
fi

echo "Вопрос решен"