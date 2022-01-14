#!/bin/sh

if which brew >/dev/null 2>&1; then
	brew install getantibody/tap/antibody || brew upgrade antibody
else
	curl -sL https://git.io/antibody | sudo sh -s - -b /usr/local/bin
fi

antibody bundle < "$DOTFILES/antibody/bundles.txt" > "$HOME/.zsh_plugins.sh"
antibody update
