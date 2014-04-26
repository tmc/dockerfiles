# go1.3b1
FROM base/archlinux

MAINTAINER Travis Cline "travis.cline@gmail.com"
RUN pacman -Sy --noconfirm git mercurial bzr wget; yes | pacman -Scc
RUN wget -O- https://storage.googleapis.com/golang/go1.3beta1.linux-amd64.tar.gz | tar xz; mv go goroot

ENV GOPATH /go
ENV GOROOT /goroot
ENV PATH /go/bin:/goroot/bin:/usr/local/go/bin:$PATH
