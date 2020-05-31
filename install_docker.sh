#!/bin/bash
echo "Installing docker on a ubuntu machine"
#Instructions from: https://docs.docker.com/engine/install/ubuntu/

#1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

#2. Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#3. Add stable repo
 sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#4. Install docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
