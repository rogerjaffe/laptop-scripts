#!/bin/sh

# Set high resolution
xrandr --newmode "1600x900"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
xrandr --addmode eDP-1 "1600x900"
xrandr -s "1600x900"

# Reset wallpaper
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/mrj-wallpaper.jpg

# Erase user files
rm -rf /home/student

# Copy new home configuration
cp -R /home/saved /home/student
chown -R student student
chgrp -R student student

# Empty the trash using the trash-cli package
trash-empty

# Clone the file setup scripts
rm -rf ~/cfm
git clone https://github.com/rogerjaffe/class-file-management cfm
git config --global --unset user.name
git config --global --unset user.email
