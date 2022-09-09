#!/bin/sh

# Set high resolution
#xrandr --newmode "1600x900"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
#xrandr --addmode eDP-1 "1600x900"
#xrandr -s "1600x900"

# Reset wallpaper
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/mrj-wallpaper.jpg

# Move folders / files to retain
mv /home/student/Desktop /home/temp
mv /home/student/Documents /home/temp
mv /home/student/Downloads /home/temp
mv /home/student/NetBeansProjects /home/temp
mv /home/student/Public /home/temp
mv /home/student/snap /home/temp
mv /home/student/Templates /home/temp
mv /home/student/Videos /home/temp
mv /home/student/VirtualBox\ VMs /home/temp
mv /home/student/setup.sh /home/temp

# Erase all other files in home folder
rm -rf /home/student/*

# Restore default folders
mv /home/temp/* /home/student

# Erase user files inside default folders
rm -rf /home/student/Desktop/*
rm -rf /home/student/Downloads/*
rm -rf /home/student/Documents/*
rm -rf /home/student/Public/*
rm -rf /home/student/Templates/*
rm -rf /home/student/Videos/*
rm -rf /home/student/NetBeansProjects/*

# Empty the trash using the trash-cli package
trash-empty

# Clone the file setup scripts
rm -rf ~/cfm
git clone https://github.com/rogerjaffe/class-file-management cfm
git config --global --unset user.name
git config --global --unset user.email
