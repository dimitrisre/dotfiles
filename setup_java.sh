#!/bin/bash
function install_java {
  echo "_____________Installing Java 8______________"
  sudo apt install openjdk-8-jre openjdk-8-jre-headless openjdk-8-doc openjdk-8-jdk openjdk-8-jdk-headless -y
  echo "_________Finished________"
}
