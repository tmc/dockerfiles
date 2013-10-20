FROM base/devel

MAINTAINER Travis Cline <travis.cline@gmail.com>

RUN yaourt -Sy --noconfirm linux-aufs_friendly
RUN yaourt -Sy --noconfirm lxc-docker
RUN yaourt -Sy --noconfirm aufs3-util

RUN mkdir /work
ADD Dockerfile_busybox /work/Dockerfile
WORKDIR /work
VOLUME /var/lib/docker
ADD bin/ /bin/
ENTRYPOINT ["mkbusybox-plus"]

