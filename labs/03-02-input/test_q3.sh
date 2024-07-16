#!/bin/bash

cat /home/moon/mcq3.txt | grep 'Vendor of Camry is Toyota'

if [ $? -ne 0 ]; then
    echo 'В файле mcq3.txt нет правильного ответа' && exit 1
fi

cat /home/moon/mcq3.txt | grep -v 'None'

if [ $? -ne 0 ]; then
    echo 'В файле mcq3.txt есть неправильный ответ' && exit 1
fi

cat /home/moon/mcq3.txt | grep -v 'USB vendor ID not defined'

if [ $? -ne 0 ]; then
    echo 'В файле mcq3.txt есть неправильный ответ' && exit 1
fi

cat /home/moon/mcq3.txt | grep -v 'Vendor of Vesta is Lada'

if [ $? -ne 0 ]; then
    echo 'В файле mcq3.txt есть неправильный ответ' && exit 1
fi

echo "Вопрос решен"