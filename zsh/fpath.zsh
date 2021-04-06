#!/usr/bin/env zsh

if [ "$(uname -s)" = "Darwin" ]; then
	if [ "$(arch)" = "arm64" ]; then
		fpath=("$(brew --prefix)/share/zsh/site-functions" "$(brew --prefix)/share/zsh/functions" $fpath)
	fi
fi

# Add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder in $DOTFILES/*; do
	if [ -d "$topic_folder" ]; then
		fpath=($topic_folder $fpath)
	fi
done
