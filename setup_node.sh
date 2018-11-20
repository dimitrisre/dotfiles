#!/bin/bash
function install_node {
  echo "____________Installing node 11.x version___________"
  DISTRO=$(lsb_release -c -s)
  NODEREPO="node_11.x"
  sudo echo "deb https://deb.nodesource.com/$NODEREPO $DISTRO main" > /etc/apt/sources.list.d/nodesource.list
  sudo echo "deb-src https://deb.nodesource.com/$NODEREPO $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list
  sudo apt update
  sudo apt install nodejs -y
  echo "_________Finished________"
}
