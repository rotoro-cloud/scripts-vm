#!/bin/bash

cat /home/moon/mcq2.txt | grep 'All arguments'

if [ $? -ne 0 ]; then
    echo 'В файле mcq2.txt нет правильного ответа' && exit 1
fi

cat /home/moon/mcq2.txt | grep -v 'All arguments and script name'

if [ $? -ne 0 ]; then
    echo 'В файле mcq2.txt есть неправильный ответ' && exit 1
fi

cat /home/moon/mcq2.txt | grep -v 'Script name'

if [ $? -ne 0 ]; then
    echo 'В файле mcq2.txt есть неправильный ответ' && exit 1
fi

cat /home/moon/mcq2.txt | grep -v 'Fifth argument'

if [ $? -ne 0 ]; then
    echo 'В файле mcq2.txt есть неправильный ответ' && exit 1
fi

echo "Вопрос решен"

bash /labs/03-02-input/prepare_q3.sh