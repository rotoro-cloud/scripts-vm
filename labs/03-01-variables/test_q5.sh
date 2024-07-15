#!/bin/bash

rm -rf /home/moon/UAZ; bash /home/moon/create_vendor_files.sh && ls /home/moon/UAZ

if [ $? -ne 0 ]; then
    echo "Скрипт create_vendor_files.sh работает неверно" && exit 1
fi

echo "Вопрос решен"