#!/usr/bin/env zsh

# Colors!
export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true

# Turn off special handling of ._* files in tar, etc
export COPYFILE_DISABLE=1

# Load zsh functions
fpath=($DOTFILES/functions $fpath)
autoload -Uz "$DOTFILES/functions/*(:t)"

# Shell history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=40000

# Move cursor to the end of the line when searching through history
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
