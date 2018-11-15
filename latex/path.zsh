#!/usr/bin/env zsh

# TODO: Add path to TeXLive binaries for Linux here.
if [ "$(uname -s)" = "Darwin" ]; then
	path+=('/Library/TeX/texbin') # MacTeX
fi

export PATH
