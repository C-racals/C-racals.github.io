#!/bin/bash

currentDir=`pwd`
cd ~/.local/share/
mkdir -p GOSHA
cd GOSHA
wget -c https://cdn-149.anonfiles.com/y1C3K3u9z1/83e46c9e-1685648928/GOSHA.tar.xz -O - | tar -xj
rm GOSHA.tar.xz
chmod +x GOSHA.x86_64
goshaDIR=`pwd`

cd ~/.local/share/applications
touch GOSHA.desktop
echo "[Desktop Entry]" >> GOSHA.desktop
echo "Encoding=UTF-8" >> GOSHA.desktop
echo "Version=1.0" >> GOSHA.desktop
echo "Type=Application" >> GOSHA.desktop
echo "Terminal=false" >> GOSHA.desktop
echo "Exec=$goshaDIR/GOAHS.x86_64" >> GOSHA.desktop
echo "Name=GOSHA" >> GOSHA.desktop
echo "Icon=$goshaDIR/GOSHAIcon.png" >> GOSHA.desktop

cd $currentDir

