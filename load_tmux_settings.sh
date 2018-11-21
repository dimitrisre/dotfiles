#!/bin/bash
function restore_tmux_settings {
  cp $HOME/dotfiles/config_files/tmux.conf $HOME/.tmux.conf
  tmux source-file $HOME/.tmux.conf
}
