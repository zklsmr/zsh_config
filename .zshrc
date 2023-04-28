#source ~/Tools/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Use powerline
USE_POWERLINE="true"


#aliases
alias ll='ls -altr'

#history expansion
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zhistory

#auto complition
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit 
_comp_option+=(globdots)

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "~/miniconda3/etc/profile.d/conda.sh" ]; then
        . "~/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="~/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/bin:$PATH"
