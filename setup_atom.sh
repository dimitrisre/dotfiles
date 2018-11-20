#!/bin/bash
function install_atom {
  pushd $HOME/my_configuration/
  atom_version=$(curl -L https://api.github.com/repos/atom/atom/releases/latest | jq .name -r)
  wget "https://github.com/atom/atom/releases/download/v$atom_version/atom-amd64.deb" -O /tmp/atom-amd64.deb
  dpkg -i /tmp/atom-amd64.deb
  apm install teletype git-plus ide-bash language-scala
  sudo npm i --unsafe-perm -g bash-language-server
  cp $HOME/my_configuration/config_files/atom_config.cson $HOME/.atom/config.cson
  sudo cp $HOME/my_configuration/application_files/atom.desktop /usr/share/applications/
  popd
}
