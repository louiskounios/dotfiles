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

function readme() {
	files=("README.md" "readme.md" "README" "readme")
	for file in "${files[@]}"; do
		if [ -f "$file" ]; then
			cat "$file"
			return 0
		fi
	done

	echo "Unable to find: $files"
	return 1
}

function cd() {
  if [ $# -eq 1 ]; then
    builtin cd -- "$1" && [ -d .git ] && echo "This is a git repository. Remember to git pull." || true
  fi
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
