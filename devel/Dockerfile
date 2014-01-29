FROM base/devel:minimal

RUN pacman -S --noconfirm git rsync strace; rm /var/cache/pacman/pkg/*

ADD inst_yaourt.sh inst_yaourt.sh
RUN sh -x ./inst_yaourt.sh
