#!/bin/bash

INSTALL_DIR="/opt/vscode"
TEMP_DIR="/tmp/vscode_update"



echo "updating vscode"


mkdir -p $TEMP_DIR
cd $TEMP_DIR

echo "Dowloading last version"
curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64" --output vscode.tar.gz

echo "unpresing files"
tar -zxf vscode.tar.gz

echo "installing in $INSTALL_DIR..."
sudo rm -rf $INSTALL_DIR
sudo  mv VSCode-linux-x64 $INSTALL_DIR

rm -rf $TEMP_DIR

echo "VS Code Updated"
