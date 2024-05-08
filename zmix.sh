#!/usr/bin/env bash
echo
echo "ZMIX Shell 3.0"
echo "For more information please visit https://github.com/rvdmeij/zmix/"
echo
echo

REPO='https://github.com/rvdmeij/zmix.git'
ZMIX_PATH='/opt/zmix'

if [ -d "$ZMIX_PATH" ]; then
  echo "A previous installation of ZMIX is detected and will be overwritten."
  echo "Any custom changes to the configuration will be lost."

  read -p "Are you sure to continue? (y/n): " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit
  else
    rm -fr /opt/zmix
    rm -fr /etc/zsh/oh-my-zsh
  fi
fi

echo -n "Installing required modules... "
apt update 
apt install zsh git linuxlogo figlet vim lsb-release sudo \
 dnsutils host whois telnet tmux lsof mtr net-tools rsync htop screen \
 neofetch rsync apt-transport-https ca-certificates curl nmap -qq -y
echo "done"

echo "Getting things done..."
git clone $REPO $ZMIX_PATH
git clone https://github.com/ohmyzsh/ohmyzsh.git /etc/zsh/oh-my-zsh

echo "Starting configuration..."
exec $ZMIX_PATH/config.sh $ZMIX_PATH
