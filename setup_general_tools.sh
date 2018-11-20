#!/bin/bash
function install_general_tools {
  sudo apt update
  sudo apt install -y jq \
  dirmngr \
  iftop \
  htop \
  git \
  tmux \
  tmux-plugin-manager \
  bash-completion \
  apt-transport-https \
  dconf-cli \
  dconf-editor \
  bzip2 \
  curl \
  libgconf-2-4 \
  gconf-service \
  gconf2 \
  gconf2-common \
  libgconf-2-4
}
