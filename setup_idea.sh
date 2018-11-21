function install_idea {
  pushd $HOME/dotfiles
  echo "_____________ Install idea latest version ______________"
  release_url="https://data.services.jetbrains.com/products/releases?code=IIC&latest=true"
  download_url=$(wget $URL_RELEASE -q -O - | jq '.IIC[0].downloads.linux.link' -r)
  download_file="/tmp/ideaIC.tar.gz"
  installation_dir="$HOME/opt/idea"

  wget $download_url -O $download_file
  mkdir -p $installation_dir
  tar zxf $download_file --strip-components=1 -C $installation_dir
  rm $download_file

  my_desktop_file=$HOME/dotfiles/application_files/jetbrains-idea-ce.desktop
  cp $my_desktop_file $HOME/.local/share/applications/

  echo "Exec=\"$installation_dir/bin/idea.sh\" %f" >> $APPLICATION_FILE
  echo "Icon=$installation_dir/bin/idea.png" >> $APPLICATION_FILE
  echo "_________Finished________"
  popd
}
