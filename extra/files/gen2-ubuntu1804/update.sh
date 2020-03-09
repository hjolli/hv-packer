#!/bin/sh

# Update the box
apt-get -y update
apt-get -y upgrade

# Install dependencies
apt-get -y install dkms
apt-get -y install nfs-common
apt-get -y install byobu
apt-get -y ansible apt-transport-https ca-certificates curl software-properties-common python3-pip virtualenv python3-setuptools

curl -fsSL https://yum.dockerproject.org/gpg | apt-key add - 
add-apt-repository \
    "deb https://apt.dockerproject.org/repo/ \
    ubuntu-$(lsb_release -cs) \
    main" 
apt-get update
apt-get -y install docker-ce docker-compose

