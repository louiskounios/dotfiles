#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	brew install antidote || brew upgrade antidote
else
	ANTIDOTE_REPO_DIR="${HOME}/.antidote"
	if [ ! -d "$ANTIDOTE_REPO_DIR" ]; then
		git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_REPO_DIR"
	else
		cd "$ANTIDOTE_REPO_DIR"
		git pull
	fi
fi
