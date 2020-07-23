### Aliases
alias g=git
alias ipy=ipython3
alias m=neomutt
alias q=exit
alias p=python
alias r=reset
alias t=tmux
alias v=vim

# Sources
source $HOME/.dotfiles/nnn

# Tilix Configuration
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
