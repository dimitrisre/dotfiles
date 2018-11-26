#!/bin/bash
sudo apt update
for file in $(ls setup_*); do
  source $file
done
for file in $(ls load_*); do
  source $file
done
restore_gnome_settings
install_general_tools
restore_gnome_theme
restore_tmux_settings
install_java
install_maven
install_scala_apt
install_sbt_from_git
install_python
install_node
install_atom
install_sublime_texteditor
install_docker
install_docker_compose
install_google_chrome_from_repo
install_mozilla
install_etcher
install_idea
[[ ! -v DEVELOPER_ENV ]] && install_steam
