#!/bin/sh

brew install antidote || brew upgrade antidote

# source "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"
# source <(antidote init)
# antidote bundle < "$DOTFILES/antidote/bundles.txt" > "$HOME/.zsh_plugins.txt"
# antidote update
