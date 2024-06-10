#!/usr/bin/env zsh

path=(
	"/usr/local/bin"
	"/usr/bin"
	"/bin"
	"/usr/sbin"
	"/sbin"
	"$DOTFILES/bin"
	"$HOME/bin"
)

if [ "$(uname -s)" = "Darwin" ]; then
	if [ "$(arch)" = "arm64" ]; then
		path=('/opt/homebrew/bin' $path)
	fi
fi

export PATH
