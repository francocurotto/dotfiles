#/!bin/bash

# install tmux config file
ln -s $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf

# install inputrc config file
ln -s $HOME/.dotfiles/inputrc $HOME/.inputrc

# install mutt config file
ln -s $HOME/.dotfiles/muttrc $HOME/.muttrc

# install bash configuration file. Intead of doing a ln -s
# we opt to add source into a existing .bashrc given by the
# distribution
BASHLINE="source $HOME/.dotfiles/bashrc"
# add line only if it doesn't already exists in .bashrc
if ! grep -Fxq "$BASHLINE" $HOME/.bashrc; then
    echo $'\n# Add my bash config file' >> $HOME/.bashrc
    echo $BASHLINE >> $HOME/.bashrc
fi
