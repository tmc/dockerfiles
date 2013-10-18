tmp: build_git_here.sh
	mkdir tmp || echo 'tmp exists'
	pacman -b ./tmp -r ./tmp -Syddu --noconfirm git openssl pcre zlib
	docker build -t base/busybox_git .
