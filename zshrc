#
# ~/.zshrc
#

# set zsh options
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zhistory
setopt PROMPT_CR
setopt PROMPT_SP
setopt AUTO_CD

# enable colors
autoload -U colors && colors

# set $PATH
PATH=$PATH:~/bin
export path

# set enviroment variables
export EDITOR="vim"
export TERM=screen-256color
export PROMPT_EOL_MARK=""

# aliases
alias l='ls --color=auto'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -lh'
alias v='vim'
alias c='clear'
alias n='ncmpcpp'
alias r='ranger'
alias i='screen -r'
alias p="pwd | sed \"s:/home/$USER:~:g\""
alias ca='cava'
alias pac='pacaur --color=auto --noedit'
alias cmat='cmatrix -C red -an'
alias pacclean='sudo pacaur -R $(sudo pacaur -Qdtq)'
# alias bconf='vim ~/.config/bspwm/bspwmrc'
# alias sconf='vim ~/.config/sxhkd/sxhkdrc'
# alias zconf='vim ~/.zshrc'
# alias zsor='source ~/.zshrc'
# alias nconf='vim ~/.ncmpcpp/config'
# alias xconf='vim ~/.Xresources'
# alias vconf='vim ~/.vimrc'
# alias cconf='vim ~/.config/compton.conf'
alias emacs="printf \"don't use that silly\""
alias nano="printf \"what are you, a pleb?\""
alias xref="xrdb ~/.Xresources"
alias :q="exit"
alias :wq="exit"

function conf
{
    case $1 in
        vim|v) $EDITOR ~/.vimrc ;;
        zsh|z) $EDITOR ~/.zshrc ;;
        ncmpcpp|n) $EDITOR ~/.ncmpcpp/config ;;
        xrdb|x) $EDITOR ~/.Xresources ;;
        2bwm|2) cd ~/src/2bwm && $EDITOR config.h ;;
    esac
}

function src
{
    case $1 in
        vim|v) source ~/.vimrc ;;
        zsh|z) source ~/.zshrc ;;
        xrdb|x) xrdb ~/.Xresources ;;
        2bwm|2) cd ~/src/2bwm && make && sudo make install ;;
    esac
}

# make git work
function autogit
{
    git add --all && git commit -m $1 && git push -u origin master
}

function autofont
{
    bdftopcf $1.bdf -o $1.pcf && mkfontscale && mkfontdir && xset fp rehash && fc-cache -fv
}

# set prompt
PROMPT='%F{red};%f '

# RPROMPT='%F{red}%~%f '
