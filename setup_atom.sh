#!/bin/bash
function install_atom {
  pushd $HOME/dotfiles/
  atom_version=$(curl -L https://api.github.com/repos/atom/atom/releases/latest | jq .name -r)
  echo "__________ Installing atom version $atom_version __________"
  wget "https://github.com/atom/atom/releases/download/v$atom_version/atom-amd64.deb" -O /tmp/atom-amd64.deb
  sudo dpkg -i /tmp/atom-amd64.deb
  sudo apm install teletype git-plus ide-bash language-scala
  sudo npm i --unsafe-perm -g bash-language-server
  cp $HOME/dotfiles/config_files/atom_config.cson $HOME/.atom/config.cson
  sudo cp $HOME/dotfiles/desktop_files/atom.desktop /usr/share/applications/
  popd
  echo "_________________________Finished_________________________"
}
