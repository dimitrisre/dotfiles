#!/bin/bash
function install_sbt_from_git {
  pushd $HOME/my_configuration/
  sbt_version=$(curl -L https://api.github.com/repos/sbt/sbt/releases/latest | jq .name -r)
  wget "https://piccolo.link/sbt-$sbt_version.zip" -O /tmp/sbt-$(echo $sbt_version).zip && cd /tmp
  sudo unzip sbt-`echo $sbt_version`.zip -d /opt/
  sudo ln -s /opt/sbt/bin/sbt /usr/bin/sbt
  popd
}

function install_sbt {
  wget https://piccolo.link/sbt-1.2.6.zip
  unzip sbt-1.2.6.zip
  sudo cp sbt /opt/sbt
  sudo ln -s /opt/sbt/bin/sbt /usr/bin/sbt
}
