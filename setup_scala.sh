#!/bin/bash
function install_scala {
  pushd $HOME/dotfiles/
  scala_version=$(curl -L https://api.github.com/repos/scala/scala/releases/latest | jq .tag_name -r)
  echo "____________ Installing scala $scala_version _______________"
  wget "https://api.github.com/repos/scala/scala/zipball/$scala_version" -O /tmp/scala-$(echo $scala_version).zip && cd /tmp
  sudo unzip scala-$(echo $scala_version).zip -d /opt/
  popd
  echo "_________Finished________"
}

function install_scala_apt {
  pushd $HOME/dotfiles/
  echo "____________ Installing scala from git _______________"
  sudo apt install scala scala-doc -y
  echo "____________ Finished _______________"
  popd
}
