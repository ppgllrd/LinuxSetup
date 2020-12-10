# /bin/bash

cp ~/.config/fontconfig/fonts.conf fonts/dotconfig/fontconfig/fonts.conf
cp /etc/fonts/conf.d/* fonts/etc/fonts/conf.d/
cp ~/.Xresources fonts/Xresources
git add fonts/*


cp ~/.local/share/gedit/styles/* Flat-Remix/dotlocal/share/gedit/styles/
git add Flat-Remix/*

git add TLP.md
git add openFortiGUI.md
git add TTYFonts.md
git add LUKSpasswordFont.md
git add qt5ct.md
git add virtualBox.md
git add calibre.md
git add update.sh



