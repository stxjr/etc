#
# ~/.bashrc
#

# completion
complete -c man which
complete -cf sudo
complete -d cd

# auto cd
shopt -s autocd

# give some room
HISTSIZE=10000
HISTFILESIZE=10000

# no duplicates in history
export HISTCONTROL=ignoredups:erasedups

# append to history
shopt -s histappend

PATH="$PATH:/home/sxthe/bin:/home/sxthe/bin/wmt"

# source files
for config in $HOME/.sh.d/*; do
    source $config
done
unset config
