#!/bin/bash
function restore_gnome_settings {
  echo "____________ Loading gnome settings ____________"
  cp $HOME/dotfiles/config_files/gnome_settings.conf /tmp/
  cp -R $HOME/dotfiles/desktop_files/extensions $HOME/.local/share/gnome-shell/
  sed -i -e "s/TO_BE_REPLACED/$USER/g" /tmp/gnome_settings.conf
  dconf load /org/gnome/ < /tmp/gnome_settings.conf
  rm /tmp/gnome_settings.conf
  cp $HOME/dotfiles/config_files/bashrc $HOME/.bashrc
  sudo cp $HOME/dotfiles/backgrounds/desktop-grub.png /usr/share/images/desktop-base/
  sudo update-grub2
  echo "_________Finished________"
}
