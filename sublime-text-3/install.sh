#!/bin/zsh -e

if [ "$(uname -s)" = "Darwin" ]; then
  brew cask install sublime-text3
  ST3_LOCAL="$HOME/Library/Application Support/Sublime Text 3"
else
  ST3_LOCAL="$HOME/.config/sublime-text-3"
fi

# create needed directories
mkdir -p "$ST3_LOCAL/Installed Packages"
mkdir -p "$ST3_LOCAL/Packages/User/"

# Install Package Control
curl -o "$ST3_LOCAL/Installed Packages/Package Control.sublime-package" \
  "https://sublime.wbond.net/Package Control.sublime-package"

# Link config
ln -sf "$ZSH/sublime-text-3/Preferences.sublime-settings" \
  "$ST3_LOCAL/Packages/User/"

# Link keybindings
ln -sf "$ZSH/sublime-text-3/Default.sublime-keymap" \
  "$ST3_LOCAL/Packages/User/Default (OSX).sublime-keymap"
ln -sf "$ZSH/sublime-text-3/Default.sublime-keymap" \
  "$ST3_LOCAL/Packages/User/Default (Linux).sublime-keymap"

# Link Installed packages file
# You might need to relink this to apply updates because package control
# might remove this file after executing it...
ln -sf "$ZSH/sublime-text-3/Package Control.sublime-settings" \
  "$ST3_LOCAL/Packages/User/"
