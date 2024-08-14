#!/bin/bash

# Credits to Mischa van den Burg

today=$(date +"%m-%d-%Y")
tomorrow=$(date -d "tomorrow" +"%m-%d-%Y")
yesterday=$(date -d "yesterday" +"%m-%d-%Y")
file="$notes/daily-notes/$today.md"

cd "$notes" || exit

new_note() {
	touch "$file"

	# Format the file with the daily template
	cat <<EOF >"$file"
# $today

[[$yesterday]] - [[$tomorrow]]

## Habits
- [ ]

## TODO
- [ ]


## Log

EOF

}

# If the daily note does not exist, create a new one.
# this uses the test command with the -f flag.
if [ ! -f "$file" ]; then
	echo "File does not exist, creating new daily note."
	new_note
fi

# Open the daily note at the bottom of the file in insert mode and run NoNeckPain to make it center
nvim '+ normal Gzzo' "$file" -c :NoNeckPain
