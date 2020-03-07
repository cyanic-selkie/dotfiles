#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Transmission helpers
alias tsm='transmission-remote -l'
tsm-add () { transmission-remote -a "$1"; }
tsm-stop() { transmission-remote -t"$1" --stop; }
tsm-start() { transmission-remote -t"$1" --start; }
tsm-purge() { transmission-remote -t"$1" --remove-and-delete; }
tsm-remove() { transmission-remote -t"$1" -r; }
tsm-info() { transmission-remote -t"$1" -i; }

