#!/bin/sh
#Installation after restore from timeshift

sudo systemctl enable systemd-timesyncd
sudo timedatectl set-ntp true 
#Update Repos
sudo pacman -Syu

#intall graphic driver
sudo pacman -S xf86-video-intel nvidia nvidia-utils

#install xorg server
sudo pacman -S xorg-server

#install xfce4
sudo pacman -S exo garcon tumbler xfce4-panel xfce4-power-manager \
	xfce4-session xfce4-settings xfconf xfdesktop xfwm4

#install xfce4-goodies
sudo pacman -S xfce4-netload-plugin xfce4-notifyd xfce4-pulseaudio-plugin \
	xfce4-screenshooter 

#install terminal
sudo pacman -S kitty 

#thunar
sudo pacman -S thunar thunar-volman thunar-archive-plugin \
	thunar-media-tags-plugin gvfs gvfs-mtp file-roller

#install sound-driver
pacman -S pipewire pipewire-jack pipewire-alsa pipewire-pulse \
	wireplumber pavucontrol 

#install noto fonts
pacman -S noto-fonts noto-fonts-emoji noto-fonts-cjk noto-fonts-extra

#essesial software
pacman -S vim keepassxc mpv sxiv

#browser
yay -S brave-bin
#still figure it out how to fstab
#
#UUID=2e4cb9df-9dc2-4709-9622-27a1938b3046       /home/yellow/SecondStore/       btrfs   rw,relatime,exec,defaults       0 1
