autoload colors; colors
autoload -U compinit; compinit
autoload -Uz zmv
autoload -U url-quote-magic

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#export PATH="$HOME/.ebenv/shims:$PATH"

eval $(dircolors ~/dircolors/dircolors.ansi-universal)

local p_cdir="%B%F{blue}[%~]%f%b"$'\n'
local p_info="%n@%m"
local p_mark="%(?,%F{green},%F{red})%#%f"
PROMPT=" $p_cdir$p_info $p_mark "
SPROMPT="%r is correct? [n,y,a,e]: "

bindkey -v

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt extended_glob
setopt print_eight_bit
setopt ignore_eof
setopt interactive_comments

alias -g ...='../..'
alias -g ....='../../..'
alias rename='noglob zmv -W'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias lla='ls -la --color=auto'
alias lal='ls -la --color=auto'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias less='less -XF'

alias cls='clear'
alias g++='g++ -std=c++11'
alias mclog='less +F /usr/local/minecraft/logs/latest.log'

alias -g L='| less -XF'
alias -g G='| grep'

alias tin='man'
#alias shit='python3 /home/student/sen14/sy14806/ap2/fucking_ap/senkouka.py'
#alias shitbot='pyhton3 /home/student/sen14/sy14806/ap2/fucking_ap/senkouka_bot.py'

#zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

zle -N self-insert url-quote-magic

WORDCHARS='?_-.[]~=&;!#$%^(){}<>'
