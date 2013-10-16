# go1.2
FROM base/arch

MAINTAINER Travis Cline "travis.cline@gmail.com"
RUN pacman -Syu --noconfirm git mercurial bzr
RUN curl -s http://go.googlecode.com/files/go1.2rc1.linux-amd64.tar.gz | tar xzvf -; mv go /usr/local/go
ENV GOPATH /go
ENV PATH /go/bin:/usr/local/go/bin:$PATH
