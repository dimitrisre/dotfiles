function install_idea {
  pushd $HOME/dotfiles
  echo "_____________ Install idea latest version ______________"
  release_url="https://data.services.jetbrains.com/products/releases?code=IIC&latest=true"
  download_url=$(wget $release_url -q -O - | jq '.IIC[0].downloads.linux.link' -r)
  download_file="/tmp/ideaIC.tar.gz"
  mkdir -p $HOME/programms
  installation_dir="$HOME/programms/idea/"

  wget $download_url -O $download_file
  mkdir -p $installation_dir
  tar zxf $download_file --strip-components=1 -C $installation_dir
  rm $download_file

  cp $HOME/dotfiles/desktop_files/jetbrains-idea-ce.desktop /tmp/
  sed -i -e 's|TO_BE_REPLACED|'$installation_dir'|g' /tmp/jetbrains-idea-ce.desktop
  my_desktop_file=/tmp/jetbrains-idea-ce.desktop
  cp $my_desktop_file $HOME/.local/share/applications/
  rm $my_desktop_file

  echo "_________Finished________"
  popd
}
