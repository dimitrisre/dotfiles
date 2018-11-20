#!/bin/bash
function install_sbt_from_git {
  sbt_version=$(curl -L https://api.github.com/repos/sbt/sbt/releases/latest | jq .name -r)
  wget "https://piccolo.link/sbt-$sbt_version.zip" > /tmp/sbt-$sbt_version.zip && cd /tmp
  sudo unzip sbt-$sbt_version.zip /opt
  sudo ln -s /opt/sbt/bin/sbt /usr/bin/sbt
}

function install_sbt {
  wget https://piccolo.link/sbt-1.2.6.zip
  unzip sbt-1.2.6.zip
  sudo cp sbt /opt/sbt
  sudo ln -s /opt/sbt/bin/sbt /usr/bin/sbt
}
