#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	brew install eza
else
	VERSION="0.18.4"

	wget "https://github.com/eza-community/eza/releases/download/v${VERSION}/eza_x86_64-unknown-linux-gnu.tar.gz" --output-document=/tmp/eza.tar.gz
	tar xf /tmp/eza.tar.gz -C /tmp
	rm --force /tmp/eza.tar.gz
	sudo mv /tmp/eza /usr/local/bin/

	wget "https://github.com/eza-community/eza/releases/download/v${VERSION}/completions-${VERSION}.tar.gz" --output-document=/tmp/eza-completions.tar.gz
	tar xf /tmp/eza-completions.tar.gz -C /tmp
	rm --force /tmp/eza-completions.tar.gz
	sudo mv "/tmp/target/completions-${VERSION}/_eza" /usr/local/share/zsh/site-functions/
fi
