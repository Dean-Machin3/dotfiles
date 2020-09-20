export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/libpq/bin:$PATH

export EDITOR=nvim

#set JAVA_HOME for gradle builds
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home

AWS_CLI=/usr/local/bin/aws

#chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

#autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

#get different colour scheme
export LSCOLORS='cxfxCxdxbxegedabagacad'

#Aliases
alias ls='ls -G'
alias ll='ls -G -l'
alias la='ls -G -la'

alias gitb='/Users/dean.salmonssnelton/.dotfile-scripts/script.sh'

#ssh-aliases
#-------

#remove duplicates from bash history
export HISTCONTROL=ignoredups:erasedups

#TEST tab cycle
#bind '"\t":menu-complete'

# Store a lot history entries in a file for grep-age
shopt -s histappend
export HISTFILE=~/.long_history
export HISTFILESIZE=50000

# No reason not to save a bunch in history
# Takes up several more MBs of RAM now, oOOOooh
export HISTSIZE=9999

# Ignore dupe commands and other ones you don't care about
export HISTIGNORE="&:[ ]*:exit"

#fzf sourcing
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#This will return the current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

export PS1="\[\033[01;31m\]dean@\h:\[\033[01;36m\]\\w\[\033[01;35m\]\$(parse_git_branch) \[\033[00m\]\@ \n\$ "
#full name & time
#export PS1="\[\033[01;31m\]\u@\h:\[\033[01;36m\]\\w\[\033[01;35m\]\$(parse_git_branch) \[\033[00m\]\@ \n\$ "

#full name
#  export PS1="\[\033[01;31m\]\u@\h:\[\033[01;32m\]\\w\[\033[01;35m\]\$(parse_git_branch)\$ \[\033[00m\]"
#Bash completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
 fi

#Open git repo in browser
open_git_repo() {
  raw=$(env -i git config --get remote.upstream.url | cut -c 5- | sed 's/.git$//' | sed 's/:/\//')
  url= "https://${raw}"
  open "${url}"
}


# Docker
alias docker_clean_dangling='docker rmi $(docker images -qa --filter="dangling=true")'
alias docker_clean_images='docker rmi $(docker images -qa)'
alias docker_clean_containers='docker rm $(docker ps -qa)'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
