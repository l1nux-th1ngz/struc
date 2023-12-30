#!/bin/bash

config_dir="$HOME/.config/hypr"

# Create the main directory
mkdir -p "$config_dir/applications"

# dirs
applications=("alacritty" "ags" "bat" "btop" "cava" "chrome" "dunst" "eww" "firefox" "htop" "kitty" "mako" "mpd" "mpv" "ncmpcpp" "neofetch" "nvim" "pipewire" "qt5ct" "qt6ct" "ranger" "swww" "wlogout")

for app in "${applications[@]}"; do
  mkdir -p "$config_dir/applications/$app"
done

# subdirectories
mkdir -p "$config_dir/scripts"
mkdir -p "$config_dir/themes/{current,pywal}"
mkdir -p "$config_dir/wallpapers"

# Create configuration files
touch "$config_dir/hyprland.conf"
touch "$config_dir/hyprtheme.conf"

# Print a message
echo "Hypr folder structure created at: $config_dir"
