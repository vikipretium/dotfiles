#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

 export VISUAL=nvim;
  export EDITOR=nvim;
export PATH=/home/vp/.scripts:$PATH
. "$HOME/.cargo/env"
