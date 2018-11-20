#!/bin/bash
function install_mozilla {
  pushd $HOME/my_configuration/
  sudo apt remove -y firefox-esr
  sudo mkdir /opt/mozdownload
  git clone https://github.com/mozilla/mozdownload /opt/mozdownload
  cd /opt/mozdownload/
  sudo pip install mozdownload &&
  sudo python setup.py develop
  cd /tmp/ && sudo mozdownload --version=latest
  sudo bunzip2 /tmp/firefox-*.bz2
  sudo tar xvf /tmp/firefox-*.tar -C /usr/share/
  sudo cp $HOME/my_configuration/config_files/icons/mozicon128.png /usr/share/firefox/icons/
  sudo cp $HOME/my_configuration/application_files/firefox.desktop /usr/share/applications/
  popd
}
