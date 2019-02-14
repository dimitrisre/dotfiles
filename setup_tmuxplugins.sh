#!/bin/bash
function install_tmux_plugins {
  pushd $HOME/dotfiles/
  echo "__________ Installing tmux plugins __________"
  # start a server but don't attach to it
  #tmux start-server
  # create a new session but don't attach to it either
  #3tmux new-session -d
  # install the plugins
  ~/.tmux/plugins/tpm/scripts/install_plugins.sh
  # killing the server is not required, I guess
  #tmux kill-server
  popd
  echo "_________________________Finished_________________________"
}
