#!/usr/bin/env zsh

if [ "$(uname -s)" = "Darwin" ]; then
	path+=('/Library/TeX/texbin') # MacTeX
else
	: # TODO: Add path to TeXLive binaries for Linux here.
fi

export PATH
