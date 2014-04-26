# go1.2
FROM base/archlinux

MAINTAINER Travis Cline "travis.cline@gmail.com"
RUN pacman -Sy --noconfirm go; yes | pacman -Scc
RUN pacman -Sy --noconfirm git mercurial bzr; yes | pacman -Scc

ENV GOPATH /go
ENV PATH /go/bin:/usr/local/go/bin:$PATH
