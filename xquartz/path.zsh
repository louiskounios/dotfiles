#!/usr/bin/env zsh

if [ "$(uname -s)" = "Darwin" ]; then
	path+=('/opt/X11/bin')
fi

export PATH
