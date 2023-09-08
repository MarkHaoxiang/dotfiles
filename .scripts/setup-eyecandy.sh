#! /bin/sh
gsettings set org.gnome.desktop.background picture-uri file://$HOME/.wallpaper.jpg

yay -S gnome-themes-extra gnome-tweaks extension-manager papirus-icon-theme

cd ..
mkdir .themes
cd .themes
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
chmod +x install.sh
./install.sh
