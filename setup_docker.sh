#!/bin/bash
function install_docker {
  echo "__________ Installing docker-ce repo __________"
  sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

  curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

  sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/debian \
     $(lsb_release -cs) \
     stable"

  sudo apt update
  sudo apt-get install docker-ce -y
  export DOCK_USER=$USER
  sudo -E usermod -aG docker $DOCK_USER
  echo "_________Finished________"
}
