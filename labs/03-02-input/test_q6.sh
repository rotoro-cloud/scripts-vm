#!/bin/bash

cat /home/moon/mcq6.txt | grep '2'

if [ $? -ne 0 ]; then
    echo 'В файле mcq6.txt нет правильного ответа' && exit 1
fi

cat /home/moon/mcq6.txt | grep -v '3'

if [ $? -ne 0 ]; then
    echo 'В файле mcq6.txt есть неправильный ответ' && exit 1
fi

cat /home/moon/mcq6.txt | grep -v '0'

if [ $? -ne 0 ]; then
    echo 'В файле mcq6.txt есть неправильный ответ' && exit 1
fi

cat /home/moon/mcq6.txt | grep -v '5'

if [ $? -ne 0 ]; then
    echo 'В файле mcq6.txt есть неправильный ответ' && exit 1
fi

echo "Вопрос решен"