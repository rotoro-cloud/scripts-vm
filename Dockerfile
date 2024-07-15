FROM rotorocloud/centos9s-sysd-ssh-controller:moon

RUN yum install -y pv nano expect dash && yum clean all

COPY scripts/ /usr/bin/

RUN cat /usr/bin/deploy.vt- | base64 -d > /usr/bin/deploy.vt \
  && rm -f /usr/bin/deploy.vt- \
  && chmod +x /usr/bin/*
