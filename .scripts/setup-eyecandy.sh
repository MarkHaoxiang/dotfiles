#! /bin/sh

# Wallpaper
	# Static wallpaper
	# Default light mode
gsettings set org.gnome.desktop.background picture-uri file://$HOME/.wallpapers/lake.jpg
	# Dynamic wallpaper: 
	# Default dark mode
python ~/.wallpapers/dynamic_wallpaper.py lakeside
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
CRONJOB="0 * * * * export DBUS_SESSION_BUS_ADDRESS=" + $DBUS_SESSION_BUS_ADDRESS + "; /usr/bin/python /home/markhaoxiang/.wallpapers/dynamic_wallpaper.py /home/markhaoxiang/.wallpapers/lakeside"
crontab -l | { cat; echo $CRONJOB; } | crontab -
sudo cp ~/.wallpapers/dynamic-wallpapers.desktop /usr/share/applications

# Themes
yay -S gnome-themes-extra gnome-tweaks extension-manager papirus-icon-theme

cd ..
mkdir .themes
cd .themes
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
chmod +x install.sh
./install.sh
