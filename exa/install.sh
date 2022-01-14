#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	brew install exa
else
	wget "https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip" --output-document=/tmp/exa.zip
	unzip /tmp/exa.zip -d /tmp
	rm --force /tmp/exa.zip
	sudo mv /tmp/bin/exa /usr/local/bin/
	sudo mv /tmp/completions/exa.zsh /usr/local/share/zsh/site-functions/
fi
