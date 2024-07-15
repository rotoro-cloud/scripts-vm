FROM rotorocloud/centos9s-sysd-ssh-controller:moon

RUN yum install -y pv nano expect dash && yum clean all

COPY scripts/ /usr/bin/

RUN chmod +x /usr/bin/*.sh
