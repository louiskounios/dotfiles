#!/bin/sh

gitignore() {
	local IFS=","
	curl -s "https://www.gitignore.io/api/$*"
}
