#!/bin/sh

if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
	else
		VSCODE_USER_DIR="$HOME/.config/Code/User"
	fi

	mkdir -p "$VSCODE_USER_DIR"
	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_USER_DIR/settings.json"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"
	ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_USER_DIR/snippets"

	# from `code --list-extensions`
	extensions="
arcticicestudio.nord-visual-studio-code
casualjim.gotemplate
deerawan.vscode-dash
EditorConfig.EditorConfig
esbenp.prettier-vscode
mgmcdermott.vscode-language-babel
ms-python.python
ms-vscode.Go
PeterJausovec.vscode-docker
PKief.material-icon-theme
pnp.polacode
redhat.vscode-yaml
"
	for extension in $extensions; do
		code --install-extension "$extension" --force || true
	done
fi
