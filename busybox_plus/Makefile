all: 
	docker build -t mkbusybox-plus .

example:
	docker run -privileged -v /tmp:/output mkbusybox-plus filesystem glibc git openssl pcre zlib
	docker load < /tmp/bb.tar
	docker run -t -i bb git clone https://github.com/tmc/glue.git
	@echo '"/tmp/bb.tar.gz" should be your image!'
	@echo 'docker load < /tmp/bb.tar'
	@echo 'docker run -t -i bb sh'
