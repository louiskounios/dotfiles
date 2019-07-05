#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	brew install exa
else
	wget "https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip" --output-document=/tmp/exa.zip
	unzip /tmp/exa.zip -d /tmp
	rm --force /tmp/exa.zip
	sudo mv /tmp/exa-linux-x86_64 /usr/local/bin/exa
fi
