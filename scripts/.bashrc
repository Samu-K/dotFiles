#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias vi="nvim";
alias vim="nvim";
alias pacSwitch="source ~/Desktop/coding/pacSwitch/pacSwitch.sh"
alias spt="~/sptStartup.sh"

# env variables

BW_CLIENTID=$(grep "BW_CLIENTID" ~/.keys | cut -d '=' -f2); export BW_CLIENTID
BW_CLIENTSECRET=$(grep "BW_CLIENTSECRET" ~/.keys | cut -d '=' -f2); export BW_CLIENTSECRET
BW_PASSWORD=$(grep "BW_PASSWORD" ~/.keys | cut -d '=' -f2); export BW_PASSWORD
