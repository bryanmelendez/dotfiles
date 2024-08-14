#!/bin/bash

# Credits to Mischa van den Burg

# A bash script that helps me create notes in my second brain
# based on my "blog" script
# TODO
# 1. check if file already exists
# 2. write this in Go :)

# function to prompt the user for a filename
get_filename() {
	read -p "Enter a filename: " filename
	echo "$filename"
}

# function to create and open a file in the specified directory
open_file() {

	# Cd into the directory
	cd "$1" || exit
	# Create the file in the specified directory
	touch "$1/$filename.md"

	# create unique identifier and links section
	timestamp="$(date +"%Y%m%d%H%M")"

	# format the file
	{
		echo "# "
		echo -en "\n"
		echo -en "\n"
		echo -en "\n"
		echo "Links:"
		echo -en "\n"
		echo "$timestamp"
	} >>"$1/$filename.md"

	# Open the file in Neovim
	nvim '+ normal ggzzi' "$1/$filename.md" -c :NoNeckPain
}

# Prompt the user if no filename is provided
if [[ $# -eq 0 ]]; then
	filename=$(get_filename)
fi

# if more than one argument is given, print error message and stop script
if [[ $# -gt 1 ]]; then
	echo "Please provide only one filename separated by dashes, without .md extension."
	echo "Example: zet my-new-note"
	exit 1
fi

# set filename to the argument given to the script
if [[ $# -eq 1 ]]; then
	filename=$1
fi

open_file "/home/bryan/Documents/notes/0-inbox"
