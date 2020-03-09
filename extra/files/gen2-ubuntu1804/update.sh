#!/bin/sh

# Update the box
apt-get -y update
apt-get -y upgrade

# Install dependencies
apt-get -y install dkms
apt-get -y install nfs-common
apt-get -y install byobu
apt-get -y ansible apt-transport-https ca-certificates curl software-properties-common python3-pip virtualenv python3-setuptools
apt-get -y install docker.io

systemctl enable docker
systemctl start docker

