#!/bin/bash
function install_mozilla {
  pushd $HOME/my_configuration/
  sudo apt remove firefox-esr
  git clone https://github.com/mozilla/mozdownload
  cd mozdownload/
  sudo pip install mozdownload &&
  sudo python setup.py develop
  cd /tmp/ && sudo mozdownload --version=latest
  sudo bunzip2 /tmp/firefox-*.bz2
  sudo tar xvf /tmp/firefox-*.tar
  sudo cp $HOME/my_configuration/application_files/firefox.desktop /usr/share/applications/
  popd
}
