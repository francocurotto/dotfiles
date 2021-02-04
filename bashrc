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
alias gpo='git push origin'
alias gd='git diff'
alias gp='git pull'
# python aliases
alias p=python3
alias i=ipython3
alias pip=pip3
alias pd='p -m pudb'

# diable goddamn flow control
stty -ixon

# Sources
source $HOME/.dotfiles/nnn
