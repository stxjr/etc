#
# ~/.zshrc
#

# set zsh options
HISTSIZE=10000
SAVEHIST=10000
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
alias l='ls --color'
alias la='ls -a --color'
alias ll='ls -lh --color'
alias v='vim'
alias c='clear'
alias n='ncmpcpp'
alias r='ranger'
alias i='screen -r'
alias pac='pacaur --color=auto --noedit'
alias cmat='cmatrix -C red -an'
alias pacclean='sudo pacaur -R $(sudo pacaur -Qdtq)'
alias bconf='vim ~/.config/bspwm/bspwmrc'
alias sconf='vim ~/.config/sxhkd/sxhkdrc'
alias zconf='vim ~/.zshrc'
alias zsor='source ~/.zshrc'
alias nconf='vim ~/.ncmpcpp/config'
alias xconf='vim ~/.Xresources'
alias vconf='vim ~/.vimrc'
alias cconf='vim ~/.config/compton.conf'
alias emacs="printf \"don't use that silly\""
alias nano="printf \"what are you, a pleb?\""
alias wifiref="sudo netctl restart netgear57"
alias xref="xrdb ~/.Xresources"
alias :q="exit"
alias :wq="exit"

# make git work
gitplz()
{
    git add --all && git commit -m $1 && git push -u origin master
}

# set prompt
PROMPT='%F{red}%~ >%f '

# PROMPT='%F{red}──%f '
# RPROMPT='%F{red}%~%f '
