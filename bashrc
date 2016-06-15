#
# ~/.bashrc
#

complete -c man which
complete -cf sudo
complete -d cd

set -o vi

# source files
for config in /home/$USER/.sh.d/*; do
    source $config
done
