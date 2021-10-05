#!/usr/bin/env bash

PATH=$1

if [ -z "$PATH" ]; then
  echo "No path given. Quitting..."
  exit
fi
if [ ! -d "$PATH" ]; then
  echo "Directory $PATH doesn't exists. Quitting..."
  exit
fi
echo "I made it $PATH"
exit

# copy zshrc config
cp $PATH/config/zshrc /etc/zsh/zshrc

# copy vimrc config
cp $PATH/config/vimrc /etc/vim/vimrc

# better dir colors
cp $PATH/config/dir_colors /etc/zsh/.dir_colors

# Copy modded ZSH theme
cp $PATH/config/zmixmod.zsh-theme /etc/zsh/oh-my-zsh/themes/

# Setting ZSH as default shell.
sed -i 's/DSHELL\=\/bin\/bash/DSHELL\=\/bin\/zsh/g' /etc/adduser.conf
chsh -s $(which zsh)

