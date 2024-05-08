#!/usr/bin/env bash

#
# Add flatpak
#
sudo apt install -y flatpak gnome-software-plugin-flatpak 
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#
# Add Wine
#
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update
sudo apt install -y --install-recommends winehq-staging


#
# Remove Gnome Games 
#
apt purge -y gnome-games
apt autoremove -y

#
# Additional gnome packages
#
apt install gnome-tweaks gnome-shell-extension-desktop-icons-ng gnome-shell-extensions-extra gnome-shell-extensions \
 gnome-shell-extension-top-icons-plus gnome-shell-extension-dash-to-panel


sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla 
apt update
apt install -y firefox
apt remove -y firefox-esr