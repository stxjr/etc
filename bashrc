#
# ~/.mkshrc
#

# source files
for config in /home/$USER/.sh.d/*; do
    source $config
done
