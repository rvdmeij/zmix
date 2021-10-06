#!/usr/bin/env bash

ZMIX_PATH=`pwd`

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

