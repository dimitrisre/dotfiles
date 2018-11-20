#!/bin/bash
function install_sublime_texteditor {
  echo "____________Installing sublime text editor_____________"
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt update
  sudo apt install sublime-text -y
  echo "_________Finished________"
}
