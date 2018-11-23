#!/bin/bash
function restore_gnome_theme {
  pushd $HOME/dotfiles
  install_files=equilux-v20181029.zip
  wget https://github.com/ddnexus/equilux-theme/archive/$install_files -O /tmp/equilux-theme.zip
  wget https://orig00.deviantart.net/2dcd/f/2015/009/5/1/uniform_icon_theme_by_0rax0-d7hqj69.zip -O /tmp/uniform-icons-theme.zip

  cd /tmp/
  unzip -o /tmp/equilux-theme.zip && cd /tmp/equilux-theme-equilux-v20181029/ && sudo bash install.sh
  sudo unzip -o /tmp/uniform-icons-theme.zip -d /usr/share/icons/

  gsettings set org.gnome.desktop.interface gtk-theme Equilux-compact
  gsettings set org.gnome.desktop.interface icon-theme Uniform
  popd
}
