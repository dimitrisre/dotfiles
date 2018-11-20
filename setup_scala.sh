#!/bin/bash
function install_scala {
  pushd $HOME/my_configuration/
  scala_version=$(curl -L https://api.github.com/repos/scala/scala/releases/latest | jq .tag_name -r)
  wget "https://api.github.com/repos/scala/scala/zipball/$scala_version" -O /tmp/scala-$(echo $scala_version).zip && cd /tmp
  sudo unzip scala-$(echo $scala_version).zip -d /opt/
  popd
}
