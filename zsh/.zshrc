# Lines configured by zsh-newuser-install
autoload -U colors && colors
HISTFILE=~/.dotfiles/zsh/.histfile
HISTTIMEFORMAT="%d/%m/%y %T"
HISTSIZE=10000
SAVEHIST=1000
setopt nomatch notify
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matias/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/matias/.dotfiles/shell/aliases.sh
source /home/matias/.dotfiles/shell/prompt.sh
source /home/matias/.dotfiles/shell/dircolors.sh

eval "$(zoxide init zsh)"

export PNPM_HOME="/home/matias/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PYTHON3_BIN="/usr/bin/python3"

export PATH="$PATH:$PYTHON3_BIN"

export LIBVIRT_DEFAULT_URI='qemu:///system'
