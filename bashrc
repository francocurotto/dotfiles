### aliases
alias q=exit
alias r=reset
alias c=clear
alias t=tmux
alias v=vim
alias s='ssh -X'
alias g='grep -ri'
# git aliases
alias gs='git status -u'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcm.='git commit -m "."'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gd='git diff'
alias gp='git pull'
alias glo='git log --oneline'
# python aliases
alias p="python"

# disable goddamn flow control
stty -ixon

# sources
source $HOME/dotfiles/nnn
