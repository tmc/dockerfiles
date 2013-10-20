FROM base/devel:minimal
RUN pacman -S --noconfirm git rsync strace; rm /var/cache/pacman/pkg/*

RUN curl https://aur.archlinux.org/packages/pa/packer-color/packer-color.tar.gz | tar zx
RUN cd packer-color; makepkg -si --asroot --noconfirm

RUN packer-color -S --noconfirm yaourt
