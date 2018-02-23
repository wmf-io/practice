#!/bin/bash
set -euo pipefail

test() {
	read -r -p "Is that you? (y/n)" response
	if [[ "$response" = "y" ]]
	then
		echo "Well, hello!"
		true
	else
		echo "Goodbye, then!"
		false
	fi
}

test

exit0
