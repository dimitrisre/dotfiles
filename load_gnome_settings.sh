#!/bin/bash
function restore_gnome_settings {
  dconf load /org/gnome/ < $HOME/config_files/gnome_settings.conf
  cp $HOME/my_configuration/config_files/bashrc $HOME/.bashrc
}
