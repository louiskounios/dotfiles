#!/usr/bin/env zsh

path+=('/usr/local/go/bin')
export GOPATH="$PROJECTS/go"
export GOBIN="$GOPATH/bin"
path+=("$GOBIN")

export PATH
