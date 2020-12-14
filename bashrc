### Aliases
alias g=git
alias m=mutt
alias q=exit
alias r=reset
alias t=tmux
alias v=vim
# git aliases
alias gs='git status'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcm.='git commit -m "."'
alias gpom='git push origin master'
alias gd='git diff'
# python aliases
alias p=python3
alias i=ipython3
alias pip=pip3
alias pd='p -m pudb'

# Sources
source $HOME/.dotfiles/nnn

# Tilix Configuration
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
