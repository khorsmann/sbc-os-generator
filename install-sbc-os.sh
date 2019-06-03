#!/bin/bash -xv
# vagrant shell provider script for builder-debian host
# sbc-os
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

apt-get update -y
apt-get dist-upgrade -y


apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 40976EAF437D05B5
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 8B48AD6246925553

apt-get install whois dirmngr multistrap reprepro binutils \
    squashfs-tools genisoimage make linux-headers-$(uname -r) \
    genisoimage whois git zip aufs-dkms aufs-tools aufs-dev git -y


cd /root
if [ ! -d sbcOS ] ; then
    git clone https://github.com/voiceboys/sbcOS.git
else
    cd sbcOS
    git pull
fi


