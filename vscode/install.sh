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
	modules="
casualjim.gotemplate
deerawan.vscode-dash
EditorConfig.EditorConfig
ms-python.python
ms-vscode.Go
PeterJausovec.vscode-docker
pnp.polacode
redhat.vscode-yaml
Yummygum.city-lights-icon-vsc
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
