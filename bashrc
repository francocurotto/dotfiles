### aliases
alias q=exit
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
alias i="ipython3"
# virualenv picker alias
alias venv=". $HOME/dotfiles/venv-picker.sh"
# Xilinx aliases
#alias vivado="source /tools/Xilinx/Vivado/2022.1/settings64.sh; \vivado -nolog -nojournal"
# Calan aliases
alias rfsoc="qemu-system-x86_64 -enable-kvm -m 24G -drive file=/media/franco/Storage/RFSoC/rfsoc_vm.qcow2,media=disk,if=virtio -display sdl"

# disable goddamn flow control
stty -ixon

# sources
source $HOME/dotfiles/nnn
