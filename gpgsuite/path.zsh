#!/usr/bin/env zsh

if [ "$(uname -s)" = "Darwin" ]; then
	path+=('/usr/local/MacGPG2/bin')
fi

export PATH
