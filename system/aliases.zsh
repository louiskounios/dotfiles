#!/bin/sh

GREP_OPTS='--color=auto --exclude-dir={.git}'
alias grep="grep $GREP_OPTS"
alias egrep="egrep $GREP_OPTS"
alias fgrep="fgrep $GREP_OPTS"
unset GREP_OPTS

alias wget='wget --continue'

# Execute last command with `sudo`.
alias yolo='sudo $(fc -ln -1)'

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
