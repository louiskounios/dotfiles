#!/bin/sh

gitignore() {
	local IFS=","
	curl -sLw "\n" "https://www.toptal.com/developers/gitignore/api/$*"
}
