#! /bin/sh
# Install gnome
sudo pacman -S gnome --ignore epiphany,eog,gnome-backgrounds,gnome-calculator,gnome-calendar,gnome-maps,gnome-music,gnome-photos,gnome-contacts,gnome-tour,gnome-weather,totem,yelp,gnome-text-editor,gnome-user-docs
sudo systemctl -f enable gdm 

# Remove xfce
sudo pacman -Rs xfce4 xfce4-goodies xfce4-datetime-plugin endeavouros-xfce4-terminal-colors
