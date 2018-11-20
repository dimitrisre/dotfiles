URL_RELEASE="https://data.services.jetbrains.com/products/releases?code=IIC&latest=true"
URL=$(wget $URL_RELEASE -q -O - | jq '.IIC[0].downloads.linux.link' -r)
DOWNLOADED_FILE="/tmp/ideaIC.tar.gz"
INSTALLATION_DIR="$HOME/opt/idea"
APPLICATION_FILE="$HOME/.local/share/applications/jetbrains-idea-ce.desktop"

wget $URL -O $DOWNLOADED_FILE
mkdir -p $INSTALLATION_DIR
tar zxf $DOWNLOADED_FILE --strip-components=1 -C $INSTALLATION_DIR
rm $DOWNLOADED_FILE

DESKTOP_FILE=$HOME/my_configuration/application_files/jetbrains-idea-ce.desktop
cp $DESKTOP_FILE $HOME/.local/share/applications/

echo "Exec=\"$INSTALLATION_DIR/bin/idea.sh\" %f" >> $APPLICATION_FILE
echo "Icon=$INSTALLATION_DIR/bin/idea.png" >> $APPLICATION_FILE
