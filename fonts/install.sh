#!/bin/sh

URL="https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip"

install() {
	rm -rf /tmp/fira.zip /tmp/FiraCode "$1"/FiraCode*.otf
	curl -L -s -o /tmp/fira.zip "$URL"
	unzip /tmp/fira.zip -d /tmp/FiraCode
	mkdir -p "$1" && \
		cp /tmp/FiraCode/variable_ttf/FiraCode-VF.ttf "$1" && \
		cp /tmp/FiraCode/ttf/*.ttf "$1"
}

if [ "$(uname -s)" = "Darwin" ]; then
	install "$HOME/Library/Fonts"
else
	install "$HOME/.fonts"
fi
