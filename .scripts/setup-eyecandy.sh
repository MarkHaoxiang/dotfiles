#! /bin/sh

# Wallpaper
	# Static wallpaper
	# Default light mode
gsettings set org.gnome.desktop.background picture-uri file://$HOME/.wallpapers/lake.jpg
	# Dynamic wallpaper: 
	# Default dark mode
python ~/.wallpapers/dynamic_wallpaper.py ~/.wallpapers/lakeside
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
CRONJOB="export DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS; /usr/bin/python $HOME/.wallpapers/dynamic_wallpaper.py $HOME/.wallpapers/lakeside"
#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "0 * * * *" $CRONJOB >> mycron
cat mycron
#install new cron file
crontab mycron
rm mycron
sudo cp ~/.wallpapers/dynamic-wallpaper.desktop /usr/share/applications


# Themes
yay -S gnome-themes-extra gnome-tweaks extension-manager papirus-icon-theme

cd ..
mkdir .themes
cd .themes
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
chmod +x install.sh
./install.sh
