#!/bin/bash
function install_sbt_from_git {
  scala_version=$(curl -L https://api.github.com/repos/scala/scala/releases/latest | jq .tag_name -r)
  wget "https://api.github.com/repos/scala/scala/zipball/$scala_version" > /tmp/scala-$sbt_version.zip && cd /tmp
  sudo unzip scala-$scala_version.zip /opt
}
