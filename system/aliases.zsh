#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	alias ls='ls -FGh'
else
	alias ls='ls -Fh --color'
fi

alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'

GREP_OPTS='--color=auto --exclude-dir={.git}'
alias grep="grep $GREP_OPTS"
alias egrep="egrep $GREP_OPTS"
alias fgrep="ggrep $GREP_OPTS"
unset GREP_OPTS

alias wget='wget --continue'

# Create directory and cd to it.
function mkcd() {
	mkdir -p $@ && cd ${@:$#}
}

# open, pbcopy and pbpaste on Linux.
if [ "$(uname -s)" != "Darwin" ]; then
	if [ -z "$(command -v pbcopy)" ]; then
		if [ -n "$(command -v xclip)" ]; then
			alias pbcopy='xclip -selection clipboard'
			alias pbpaste='xclip -selection clipboard -o'
		elif [ -n "$(command -v xsel)" ]; then
			alias pbcopy='xsel --clipboard --input'
			alias pbpaste='xsel --clipboard --output'
		fi
	fi

	if [ -e /usr/bin/xdg-open ]; then
		alias open='xdg-open'
	fi
fi
