#!/usr/bin/env zsh

# Colors!
export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true

# When --long --grid are used at the same time, --grid will only apply if the
# resulting output will be at least EXA_GRID_ROWS long.
export EXA_GRID_ROWS=3
# Reduce the amount and intensity of colors shipped with `exa`. Dates, users,
# groups and file sizes are colored neutrally. Users and groups use a more
# vibrant color only if they don't match the user / group `exa` was ran under.
# Documentation here: https://the.exa.website/docs/colour-themes
# 8-bit color codes here: https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
export EXA_COLORS='fi=38;5;015:di=38;5;038:ex=38;5;048:ur=38;5;015:uw=38;5;203:ux=38;5;048:ue=38;5;048:gr=38;5;015:gw=38;5;203:gx=38;5;048:tr=38;5;015:tw=38;5;203:tx=38;5;048:sn=38;5;255:sb=38;5;255:uu=38;5;255:un=38;5;214:gu=38;5;255:gn=38;5;214:da=38;5;255:hd=4;38;5;015'

# Turn off special handling of ._* files in tar, etc
export COPYFILE_DISABLE=1

# https://github.com/gopasspw/gopass/pull/251
# Solves `gopass` issue with showing password prompt on shell
export GPG_TTY=$(tty)

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

# Fetch suggestions asynchronously
ZSH_AUTOSUGGEST_USE_ASYNC=true

# Set theme for zdharma/fast-syntax-highlighting
fast-theme --quiet safari
