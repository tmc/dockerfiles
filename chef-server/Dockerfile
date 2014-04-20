FROM	ubuntu
MAINTAINER Travis Cline <travis.cline@gmail.com>

RUN	apt-get update
ENV	DEBIAN_FRONTEND noninteractive

RUN	apt-get install -yq wget
RUN	wget --content-disposition "http://www.opscode.com/chef/download-server?p=ubuntu&pv=12.04&m=x86_64&v=latest&prerelease=false&nightlies=false"
RUN	dpkg -i chef-server*.deb

RUN	dpkg-divert --local --rename --add /sbin/initctl
RUN	ln -sf /bin/true /sbin/initctl

RUN	sysctl -w kernel.shmall=4194304 && sysctl -w kernel.shmmax=17179869184 && \
	/opt/chef-server/embedded/bin/runsvdir-start & \
	chef-server-ctl reconfigure && \
	chef-server-ctl stop

ADD	. /usr/local/bin/
CMD	["run_chef_server"]

EXPOSE	443
