#
# ~/.bashrc
#

# completion
complete -c man which
complete -cf sudo
complete -d cd

# auto cd
shopt -s autocd

# clear screen with ^L
bind -m vi-insert "\C-l":clear-screen

# give some room
HISTSIZE=10000
HISTFILESIZE=10000

PATH="$PATH:/home/fuyuki/bin:/home/fuyuki/bin/wmtls"

# source files
for config in $HOME/.sh.d/*; do
    source $config
done
unset config
