#!/bin/bash
function restore_gnome_theme {
  pushd $HOME/dotfiles
  wget https://orig00.deviantart.net/2dcd/f/2015/009/5/1/uniform_icon_theme_by_0rax0-d7hqj69.zip -O /tmp/uniform-icons-theme.zip
  wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz -O /tmp/materia-theme-master.tar.gz
  #wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -O /tmp/Hack-font.zip

  cd /tmp/
  sudo unzip -o /tmp/uniform-icons-theme.zip -d /usr/share/icons/
  gunzip /tmp/materia-theme-master.tar.gz
  tar xvf /tmp/materia-theme-master.tar
  sudo /tmp/materia-theme-master/install.sh
  #sudo unzip -o /tmp/Hack-font.zip -d /usr/share/fonts/
  # sudo apt install fonts-hack-ttf -y

  gsettings set org.gnome.desktop.interface gtk-theme Materia-dark-compact
  gsettings set org.gnome.desktop.interface icon-theme Uniform
  # gsettings set org.gnome.desktop.interface font-name 'Cantarell 9'
  # gsettings set org.gnome.desktop.interface document-font-name 'Sans 9'
  popd
}
