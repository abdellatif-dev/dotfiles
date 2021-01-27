# Flex on the ubuntu users and systemd users
neofetch

source $HOME/.zsh/oh-my-zsh/oh-my-zsh.sh

export EDITOR="nvim"
_comp_options+=(globdots) # hidden files are included

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

bindkey -v
export KEYTIMEOUT=1

# Change cursor depending on current mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    echo -ne "\e[5 q"
}

bindkey "^[[3;3~" delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^R' history-incremental-pattern-search-backward
autoload edit-command-line; zle -N edit-command-line
bindkey '^b' edit-command-line
autoload -U edit-command-line && zle -N edit-command-line && bindkey -M vicmd "^v" edit-command-line

PATH=$PATH:~/scripts;export PATH;
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source ~/aliasrc

# usage: h <file>
h ()
{
  grep "$1=" ~/aliasrc
}

# PROMPT='%F{10}[%f%?%F{10}]%f-%F{10}[%f%F{3}%B%1~%b%f%F{10}]%f%F{3}-> %b%f'
eval "$(starship init zsh)"
