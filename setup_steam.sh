#!/bin/bash
function install_steam {
  sudo echo "deb http://ftp.gr.debian.org/debian/ $(lsb_release -c -s) main contrib non-free" >> /etc/apt/sources.list
  sudo dpkg --add-architecture i386
  sudo apt update && sudo apt upgrade -y
  sudo apt install steam -y
}
