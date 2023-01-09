#/!bin/bash

# install vim config folder
ln -sfT $HOME/dotfiles/vim $HOME/.vim

# install tmux config file
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf

# install inputrc config file
ln -sf $HOME/dotfiles/inputrc $HOME/.inputrc

# install bashrc
if [ ! -f $HOME/.bashrc ]; then # case termux
    ln -sf $HOME/dotfiles/bashrc $HOME/.bashrc
elif [ ! -f $HOME/.bashrc ]; then # case mint
    ln -sf $HOME/dotfiles/bashrc $HOME/.bash_aliases
fi
