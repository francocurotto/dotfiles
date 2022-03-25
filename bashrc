### aliases
alias q=exit
alias r=reset
alias t=tmux
alias v=vim
alias g='grep -ri'
# git aliases
alias gs='git status'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcm.='git commit -m "."'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gd='git diff'
alias gp='git pull'

# disable goddamn flow control
stty -ixon

# sources
source $HOME/dotfiles/nnn
