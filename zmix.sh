#!/usr/bin/env bash

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%,,,,,,,,,&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@@@
@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((@@@@@
@@@@@@@@@@,,,,,,,,,,,,,,,,,,,((((((,,,,,,((((,,,,,*((,,,,,,@@@@@@@(@@
@@@@@@@@,,,,,,,,,,,,,,,,,((*,,,,,,,,,,,,,,,,,,,,,(,,,,,/(((((((@@@@@@
@@@@@@@,,,,,,,,,,,,,,,,(,,,,,,,,((((((((((,,,,,,,,,,*(((((((((((((@@@
@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((,,,,,,,((((((((((((((((@@
@@@@,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((,,,,,,(((((((((((((((((@
@@@,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((,,,,,((((((((((((((((#@
@@,,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((,,,,,,,(((((((((((((((@@
@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((,,,,,,,,,,((((((((((*,,@@
@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((,,,,,,,,,,,,,,,,,,,,,,,,,,,@
@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((,,,,,,,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((((((((((((((,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((((((((((((((((((((,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((((((((((((((((((((,,,,,,
@,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((((((((((((((((((((((,,,,,@
@,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((((((((((((((((((,,,,,,@
@@,,,,,,,,,,,,,,,,,,,,,,,,,,((((((((((((((((((((((((((((((((((,,,,,@@
@@,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((((((((((((((((,,,,,,@@
@@@,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((((((((((((((,,,,,,@@@
@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((((((((((,,,,,,,@@@@
@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((((((,,,,,,,,@@@@@
@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((((((((((((,,,,,,,,,@@@@@@
@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,(((((((((,,,,,,,,,,,,@@@@@@@@
@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@
@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@
@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,,,,,,,,,@@@@@@@@@@@@@@@@@@@@@@"
echo "      ZMIX Shell"

REPO='https://github.com/rvdmeij/zmix.git'
ZMIX_PATH='/opt/zmix'

echo -n "Installing required modules... "
apt update 
apt install python-apt zsh git linuxlogo figlet vim lsb-release sudo dnsutils host whois telnet tmux lsof mtr -qq -y
echo "done"

echo "Getting things done..."
git clone $REPO $ZMIX_PATH
git clone https://github.com/ohmyzsh/ohmyzsh.git /etc/zsh/oh-my-zsh

echo "Starting configuration..."
exec $ZMIX_PATH/config.sh $ZMIX_PATH
