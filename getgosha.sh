#!/bin/bash


currentDir=`pwd`

mkdir -p ~/.local/share/GOSHA
cd GOSHA

GOSHADir=`pwd`

wget -r --no-parent https://github.com/C-racals/C-racals.github.io/tree/main/linux-binaries/GOSHA_Data
wget https://github.com/C-racals/C-racals.github.io/blob/main/linux-binaries/GOSHA.x86_64
wget https://github.com/C-racals/C-racals.github.io/blob/main/linux-binaries/UnityPlayer.so
wget https://github.com/C-racals/C-racals.github.io/blob/main/linux-binaries/GOSHAIcon.png

chmod +x GOSHA.x86_64
cd ../applications/
touch GOSHA.dekstop
echo "[Desktop Entry]" >> GOSHA.dekstop
echo "Encoding=UTF-8" >> GOSHA.dekstop
echo "Version=1.0" >> GOSHA.desktop
echo "Type=Application" >> GOSHA.desktop
echo "Terminal=False" >> GOSHA.desktop
echo "Exec=$GOSHADir/GOSHA.x86_64" >> GOSHA.desktop
echo "Name=GOSHA" >> GOSHA.desktop
echo "Icon=$GOSHADir/GOSHAIcon.png" >> GOSHA.desktop

cd $currentDir
