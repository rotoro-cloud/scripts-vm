#!/bin/bash

sudo rm -rf /heredoc_test/
bash remote.txt

cat /heredoc_test/heredoc.txt | grep 'Shell Scripts'

if [ $? -ne 0 ]; then
    clear && echo 'Вывод /heredoc_test/heredoc.txt имеет верный контент' && exit 1
fi

ls /heredoc_test/heredoc.txt -al | grep 'moon moon'

if [ $? -ne 0 ]; then
    clear && echo 'Вывод /heredoc_test/heredoc.txt имеет верного владельца' && exit 1
fi

cat /home/moon/remote.txt | grep 'moon@localhost' | grep '<<'

if [ $? -ne 0 ]; then
    clear && echo 'В remote.txt  используется heredoc' && exit 1
fi

bash /labs/07-01-streams/prepare_q8.sh