### Aliases
alias g=git
alias q=exit
alias r=reset
alias t=tmux
alias v=vim
# git aliases
alias gs='git status'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcm.='git commit -m "."'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gd='git diff'
alias gp='git pull'

# diable goddamn flow control
stty -ixon

# sources
source $HOME/dotfiles/nnn
