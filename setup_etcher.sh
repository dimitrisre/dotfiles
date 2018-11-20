#!/bin/bash
function install_etcher {
  pushd $HOME/my_configuration
  etcher_version=$(curl --silent "https://api.github.com/repos/balena-io/etcher/releases/latest" | jq -r .tag_name)
  short_version=${etcher_version:1:${#etcher_version}}
  echo "___________ Installing etcher version $etcher_version _____________"
  if [ ! -d "$HOME/programms" ]; then
    mkdir $HOME/programms
  fi
  cd $HOME/programms
  wget "https://github.com/balena-io/etcher/releases/download/$etcher_version/balena-etcher-electron-$short_version-x86_64.AppImage" -O /tmp/etcher-$(echo $short_version).appimage
  echo "_________Finished________"
  popd
}
