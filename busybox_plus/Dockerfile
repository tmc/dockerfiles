FROM base/devel
MAINTAINER Travis Cline <travis.cline@gmail.com>
RUN git clone --no-checkout https://github.com/lxc/lxc.git /usr/local/lxc && cd /usr/local/lxc && git checkout -q lxc-0.8.0
RUN cd /usr/local/lxc && ./autogen.sh && ./configure --disable-docs --disable-apparmor && make && make install
RUN yaourt -S --noconfirm iptables
RUN yaourt -S --noconfirm libcgroup

# This will use the latest public release. To use your own, comment it out...
ADD https://get.docker.io/builds/Linux/x86_64/docker-latest /usr/local/bin/docker
# ...then uncomment the following line, and copy your docker binary to current dir.
#ADD ./docker /usr/local/bin/docker
ADD https://raw.github.com/jpetazzo/dind/master/wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/docker /usr/local/bin/wrapdocker

ADD mkbusybox-plus /usr/local/bin/mkbusybox-plus
RUN mkdir /build
WORKDIR /build
ADD Dockerfile_busybox /build/Dockerfile

VOLUME /var/lib/docker
ENTRYPOINT ["/usr/local/bin/mkbusybox-plus"]
