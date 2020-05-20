#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	brew install bat
else
	wget "https://github.com/sharkdp/bat/releases/download/v0.14.0/bat_0.14.0_amd64.deb" --output-document=/tmp/bat.deb
	sudo dpkg --install /tmp/bat.deb
	rm --force /tmp/bat.deb
fi
