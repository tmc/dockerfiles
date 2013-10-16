FROM base/go1.2

MAINTAINER Travis Cline travis.cline@gmail.com
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN go get -v github.com/fzipp/pythia
EXPOSE 8080
ENTRYPOINT ["pythia"]
