#!/bin/bash
function install_maven {
  pushd $HOME/dotfiles/
  export MAVEN_OPTS="-Xmx4098m -Xms512m"
  MVN_VERSION=$(curl -s -X GET 'http://search.maven.org/solrsearch/select?q=g%3A%22org.apache.maven%22%20AND%20a%3A%22maven%22&core=gav&rows=20&wt=json' | jq -r '.response.docs[0].v')
  echo "maven version=$MVN_VERSION"
  curl -L --fail http://www-us.apache.org/dist/maven/maven-3/$MVN_VERSION/binaries/apache-maven-$MVN_VERSION-bin.tar.gz > /tmp/maven.tar.gz
  cd /tmp/
  mkdir -p /tmp/maven/$MVN_VERSION
  tar xf /tmp/maven.tar.gz --strip-components=1 -C /tmp/maven/$MVN_VERSION
  sudo cp -R /tmp/maven/ /usr/share/
  sudo ln -s /usr/share/maven/$MVN_VERSION/bin/mvn /usr/bin/mvn
  sudo ln -s /usr/share/maven/$MVN_VERSION/bin/mvnDebug /usr/bin/mvnDebug
  sudo ln -s /usr/share/maven/$MVN_VERSION/bin/mvnyjp /usr/bin/mvnyjp
  rm /tmp/maven.tar.gz
  popd
}
