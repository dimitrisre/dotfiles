#!/bin/bash
function install_scala {
  pushd $HOME/dotfiles/
  scala_version=$(curl -s https://api.github.com/repos/scala/scala/releases/latest | jq -r '.tag_name' | cut -c 2-) # v8.6.0 -> 8.6.0)
  echo "____________ Installing scala $scala_version _______________"
  #wget "https://api.github.com/repos/scala/scala/zipball/$scala_version" -O /tmp/scala-$(echo $scala_version).zip && cd /tmp
  curl -L --fail https://downloads.lightbend.com/scala/$scala_version/scala-$scala_version.tgz > /tmp/scala.tgz
  cd /tmp
  sudo mkdir -p /opt/scala/$scala_version
  sudo tar xf /tmp/scala.tgz --strip-components=1 -C /opt/scala/$scala_version
  sudo ln -s /opt/scala/$scala_version/bin/scala /usr/bin/scala
  sudo ln -s /opt/scala/$scala_version/bin/scalac /usr/bin/scalac
  sudo ln -s /opt/scala/$scala_version/bin/scaladoc /usr/bin/scaladoc
  sudo ln -s /opt/scala/$scala_version/bin/scalap /usr/bin/scalap
  rm /tmp/scala.tgz
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
