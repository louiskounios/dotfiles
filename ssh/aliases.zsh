#!/bin/sh

alias pubkey="more $HOME/.ssh/id_ed25519.pub | pbcopy | echo '=> Public ed25519 key copied to pasteboard.'"
alias pubkeyrsa="more $HOME/.ssh/id_rsa.pub | pbcopy | echo '=> Public RSA key copied to pasteboard.'"
