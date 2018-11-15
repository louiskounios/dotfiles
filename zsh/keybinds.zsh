#!/usr/bin/env zsh

# Use emacs mode in shell.
bindkey -e

bindkey "^K" kill-whole-line # Ctrl-K
bindkey "^R" history-incremental-search-backward # Ctrl-R
bindkey "^A" beginning-of-line # Ctrl-A
bindkey "^E" end-of-line # Ctrl-E
bindkey "^[[B" history-beginning-search-forward-end # ↓
bindkey "^[[A" history-beginning-search-backward-end # ↑
