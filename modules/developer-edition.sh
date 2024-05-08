#!/usr/bin/env bash

#
# Add PHP 8.3
#
sudo curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

#
# Add docker
#
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove -y $pkg; done 
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#
# Add Symfony (cli)
#
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash

#
# Install everything
#
sudo apt install -y build-essential cmake php8.3 php8.3-cli php8.3-{bz2,curl,mbstring,intl} bc kmod cpio flex \
 libncurses5-dev libelf-dev libssl-dev dwarves bison debhelper python3 \
 docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin symfony-cli
sudo apt update
sudo apt purge -y php8.2*
sudo apt autoremove -y
sudo apt clean
sudo apt autoclean
