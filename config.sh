#!/usr/bin/env bash

ZMIX_PATH=$1

if [ -z "$ZMIX_PATH" ]; then
  echo "No path given. Quitting..."
  exit
fi
if [ ! -d "$ZMIX_PATH" ]; then
  echo "Directory $ZMIX_PATH doesn't exists. Quitting..."
  exit
fi

# copy zshrc config
cp $ZMIX_PATH/config/zshrc /etc/zsh/zshrc

# copy vimrc config
cp $ZMIX_PATH/config/vimrc /etc/vim/vimrc

# better dir colors
cp $ZMIX_PATH/config/dir_colors /etc/zsh/.dir_colors

# Copy modded ZSH theme
cp $ZMIX_PATH/config/zmixmod.zsh-theme /etc/zsh/oh-my-zsh/themes/

# Setting ZSH as default shell.
sed -i 's/DSHELL\=\/bin\/bash/DSHELL\=\/bin\/zsh/g' /etc/adduser.conf
chsh -s $(which zsh)

# Installing extra modules
bash $ZMIX_PATH/modules/developer-edition.sh
bash $ZMIX_PATH/modules/debian-desktop.sh

echo "Succesfully completed!"
echo
