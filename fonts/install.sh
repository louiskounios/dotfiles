#!/bin/sh

URL="https://github.com/tonsky/FiraCode/releases/download/1.206/FiraCode_1.206.zip"

install() {
	curl -L -s -o /tmp/fira.zip "$URL"
	unzip /tmp/fira.zip -o -d /tmp/FiraCode
	# Do not install the 'Bold' variant as it shares a numerical weight (600)
	# with the 'Retina' variant, interfering with some configurations.
	mkdir -p "$1" && \
		cp -f /tmp/FiraCode/otf/{FiraCode-Light.otf,FiraCode-Medium.otf,FiraCode-Regular.otf,FiraCode-Retina.otf} "$1"
	rm -rf /tmp/fira.zip /tmp/FiraCode
}

if [ "$(uname -s)" = "Darwin" ]; then
	install "$HOME/Library/Fonts"
else
	install "$HOME/.fonts"
fi
