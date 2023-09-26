#!/usr/bin/python

import datetime
import subprocess
import argparse
import os

parser = argparse.ArgumentParser(
	prog="DynamicWallpaper",
	description="Sets gnome wallpaper based on time"
)

parser.add_argument('path')
parser.add_argument('-s', dest='setup_cron', action=argparse.BooleanOptionalAction)
args = parser.parse_args()

def set_wallpaper():
	hour = datetime.datetime.now().time().hour
	time_map = open(args.path+'/map', 'r').readlines()
	image = os.path.join(os.getcwd(), args.path, time_map[hour]).strip()
	image = 'file://' + image	
	subprocess.call(['gsettings', 'set', 'org.gnome.desktop.background', 'picture-uri-dark', image])
	subprocess.call(['gsettings', 'set', 'org.gnome.desktop.interface', 'color-scheme', 'prefer-dark'])

if __name__== "__main__":
	set_wallpaper()	

