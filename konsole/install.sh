#!/bin/sh

[ "$(uname -s)" = "Darwin" ] && exit 0

mkdir -p "$HOME/.config"
ln -sf "$DOTFILES/konsole/konsolerc" "$HOME/.config/konsolerc"

mkdir -p "$HOME/.local/share/konsole"
ln -sf "$DOTFILES/konsole/Main.profile" "$HOME/.local/share/konsole/Main.profile"
ln -sf "$DOTFILES/konsole/PaulMillr.colorscheme" "$HOME/.local/share/konsole/PaulMillr.colorscheme"
