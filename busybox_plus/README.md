busybox-plus
------------

Mashes together the busybox Docker image with packages from Archlinux

For example, let's say we want to create a runtime that is small but has a git
binary.

Let's create a new image based on busybox that adds git from arcd git to
busybox.

First we need to create our `mkbusybox-plus` image.

Note: This image is maintained on the Docker index as $ base/mkbusybox-plus in case you
don't want to wait to rebuild it.

If you want to build it yourself invoke make in this directory. (This takes a
while).
```sh
$ make
```

Or, you can pull the prebuilt machine:
```sh
$ docker pull base/mkbusybox-plus
$ docker tag base/mkbusybox-plus mkbusybox-plus
```

We can now start selectively adding packages until we get what we want.
```sh
$ docker run -privileged -v /tmp:/output mkbusybox-plus git openssl pcre zlib
$ cat /tmp/bb.tar.gz | docker import -
```
