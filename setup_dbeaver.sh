function install_dbeaver {
  pushd $HOME/dotfiles
  echo "_____________ Install idea latest version ______________"
  release_url="https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
  download_url="https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
  download_file="/tmp/dbeaver.tar.gz"
  mkdir -p $HOME/programms
  installation_dir="$HOME/programms/dbeaver/"

  wget $download_url -O $download_file
  mkdir -p $installation_dir
  tar zxf $download_file --strip-components=1 -C $installation_dir
  rm $download_file

  cp $HOME/dotfiles/desktop_files/dbeaver.desktop /tmp/
  sed -i -e 's|TO_BE_REPLACED|'$installation_dir'|g' /tmp/dbeaver.desktop
  my_desktop_file=/tmp/dbeaver.desktop
  cp $my_desktop_file $HOME/.local/share/applications/
  rm $my_desktop_file

  echo "_________Finished________"
  popd
}
