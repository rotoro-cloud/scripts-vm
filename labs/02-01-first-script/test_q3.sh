#!/bin/bash
cd /home/moon && bash /home/moon/create-directories.sh > /tmp/output

if [ $? -ne 0 ]; then
    echo "Скрипт не работает" && exit 1
fi

ls /home/moon/vendors | grep Toyota \
&& ls /home/moon/vendors | grep Ford \
&& ls /home/moon/vendors | grep Lada

if [ $? -ne 0 ]; then
    echo "Файлы не созданы" && exit 1
fi

cat /home/moon/vendors/Toyota/models.txt | grep Camry \
&& cat /home/moon/vendors/Ford/models.txt | grep Transit \
&& cat /home/moon/vendors/Lada/models.txt | grep Vesta

if [ $? -ne 0 ]; then
    echo "Неверный контент в файлах" && exit 1
fi

cat /tmp/output | grep "load average"

if [ $? -ne 0 ]; then
    echo "Не верный вывод в скрипте" && exit 1
fi

echo "Вопрос решен"

bash /labs/02-01-first-script/prepare_q4.sh