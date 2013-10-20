all: bin/docker bin/dind
	@echo "Prepared dependencies"
	docker build -t mkbusybox-plus .

example:
	docker run -privileged mkbusybox-plus git openssl pcre zlib

bin/docker:
	cp `which docker` bin/docker

bin/dind:
	curl -o bin/dind https://raw.github.com/tianon/docker/255b6aadfacfd346ef413a1ffd945360276cbcf6/hack/dind
	chmod +x bin/dind
