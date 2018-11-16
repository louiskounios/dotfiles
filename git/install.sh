#!/bin/sh

# Don't ask ssh password all the time
if [ "$(uname -s)" = "Darwin" ]; then
	git config --global credential.helper osxkeychain
else
	# https://stackoverflow.com/a/40312117
	# git>=v2.11 has support for the `libsecret` credential helper
	git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
fi
