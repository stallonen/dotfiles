# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/larry/.zshrc'
fpath+=($HOME/.zsh/pure)
path+=($HOME/.local/share/bin)
path+=($HOME/.local/bin)
export PATH
autoload -U promptinit
#promptinit;prompt pure 
# End of lines added by compinstall
#source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source nnn.zshrc
source lscolors.sh
#test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto --hyperlink=auto'
promptinit;prompt pure
