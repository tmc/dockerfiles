#!/bin/sh

echo '[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf
pacman -Sy --noconfirm yaourt

