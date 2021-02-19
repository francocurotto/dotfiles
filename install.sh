#/!bin/bash

# install vim config folder
ln -s -T $HOME/dotfiles/vim $HOME/.vim

# install tmux config file
ln -s -T $HOME/dotfiles/tmux.conf $HOME/.tmux.conf

# install inputrc config file
ln -s -T $HOME/dotfiles/inputrc $HOME/.inputrc

# install mutt config folder
ln -s -T $HOME/dotfiles/mutt $HOME/.mutt

# install nemo shortcut file
mkdir -p $HOME/.gnome2/accels
ln -s -T $HOME/dotfiles/nemo $HOME/.gnome2/accels

# install bash configuration file. Intead of doing a ln -s
# we opt to add source into a existing .bashrc given by the
# distribution
BASHLINE="source $HOME/dotfiles/bashrc"
# add line only if it doesn't already exists in .bashrc
if ! grep -Fxq "$BASHLINE" $HOME/.bashrc; then
    echo $'\n# Add my bash config file' >> $HOME/.bashrc
    echo $BASHLINE >> $HOME/.bashrc
fi
