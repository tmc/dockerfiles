all: 
	docker build -t mkbusybox-plus .

example:
	docker run -privileged -v /tmp:/output mkbusybox-plus git openssl pcre zlib
	@echo '"/tmp/bb.tar.gz" should be your image!'
	@echo 'import with $ cat /tmp/bb.tar.gz | docker import -'
