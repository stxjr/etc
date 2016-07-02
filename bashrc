#
# ~/.bashrc
#

# completion
complete -c man which
complete -cf sudo
complete -d cd

# give me my vi
set -o vi

# clear screen with ^L
bind -m vi-insert "\C-l":clear-screen

# source files
for config in $HOME/.sh.d/*; do
    source $config
done
