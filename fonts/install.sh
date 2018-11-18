#!/bin/sh

URL="https://github.com/tonsky/FiraCode/releases/download/1.206/FiraCode_1.206.zip"

install() {
	rm -rf /tmp/fira.zip /tmp/FiraCode
	curl -L -s -o /tmp/fira.zip "$URL"
	unzip /tmp/fira.zip -d /tmp/FiraCode
	# Do not install the 'Bold' variant as it shares a numerical weight (600)
	# with the 'Retina' variant, interfering with some configurations.
	mkdir -p "$1" && \
		cp /tmp/FiraCode/otf/FiraCode-Light.otf "$1" && \
		cp /tmp/FiraCode/otf/FiraCode-Medium.otf "$1" && \
		cp /tmp/FiraCode/otf/FiraCode-Regular.otf "$1" && \
		cp /tmp/FiraCode/otf/FiraCode-Retina.otf "$1"
}

if [ "$(uname -s)" = "Darwin" ]; then
	install "$HOME/Library/Fonts"
else
	install "$HOME/.fonts"
fi
