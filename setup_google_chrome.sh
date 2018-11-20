#!/bin/bash
function install_google_chrome_from_deb {
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg i ./google-chrome*.deb
  sudo apt install -f
}

function install_google_chrome_from_repo {
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
  sudo apt-get update
  sudo apt-get install google-chrome-stable
}
