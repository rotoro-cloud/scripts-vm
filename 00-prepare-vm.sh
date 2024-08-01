#!/bin/bash

echo 'root:planet3' | chpasswd && adduser moon && echo 'moon:selena' | chpasswd && usermod -aG wheel moon

if [ $? -ne 0 ]; then
    clear && echo 'проблемы с изменением пользователей' && exit 1
fi

sed 's~metalink=https://mirrors.centos.org/metalink?repo=centos-baseos-$stream&arch=$basearch&protocol=https,http~baseurl=https://mirror.yandex.ru/centos-stream/9-stream/BaseOS/x86_64/os/~g' -i /etc/yum.repos.d/centos.repo && sed 's~metalink=https://mirrors.centos.org/metalink?repo=centos-appstream-$stream&arch=$basearch&protocol=https,http~baseurl=https://mirror.yandex.ru/centos-stream/9-stream/AppStream/x86_64/os/~g' -i /etc/yum.repos.d/centos.repo && sed 's~metalink=https://mirrors.centos.org/metalink?repo=centos-crb-$stream&arch=$basearch&protocol=https,http~baseurl=https://mirror.yandex.ru/centos-stream/9-stream/CRB/x86_64/os/~g' -i /etc/yum.repos.d/centos.repo

if [ $? -ne 0 ]; then
    clear && echo 'проблемы с патчингом листов репозиториев' && exit 1
fi

yum install -y dnf-plugins-core  && dnf config-manager --set-enabled crb && yum install -y epel-release epel-next-release

if [ $? -ne 0 ]; then
    clear && echo 'проблемы с добавлением репозиториев' && exit 1
fi

yum install -y iproute iputils net-tools ncurses sshpass pv nano expect dash bc

if [ $? -ne 0 ]; then
    clear && echo 'проблемы с установкой пакетов' && exit 1
fi

sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config
systemctl restart sshd

rm -rf /labs

mv /scripts-vm/labs /labs

if [ $? -ne 0 ]; then
    clear && echo 'проблемы с копированием директории лабораторных из папки /scripts-vm' && exit 1
fi

mv /scripts-vm/scripts/* /usr/bin/

if [ $? -ne 0 ]; then
    clear && echo 'проблемы с копированием директории команд из папки /scripts-vm' && exit 1
fi

cat /usr/bin/deploy.vt- | base64 -d > /usr/bin/deploy.vt && rm -f /usr/bin/deploy.vt- && chmod +x /usr/bin/builder* /usr/bin/lab* /usr/bin/clean-working-dir

chmod +x /labs/**/*.sh

echo "Готово, теперь заходи как 'moon' с паролем 'selena'.