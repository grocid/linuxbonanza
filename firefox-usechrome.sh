#!/bin/bash
# Displays a list of files in current directory and prompt for which
# file to edit

# Set the prompt for the select command
PS3="Type a number or 'q' to quit: "

# Create a list of files to display
	fileList=$(find ~/.mozilla/firefox/nbgkojyf.default/chrome -name userChrome* -type f)

# Show a menu and ask for input. If the user entered a valid choice,
# then invoke the editor on that file
select fileName in $fileList; do
    if [ -n "$fileName" ]; then
	cp ${fileName} ~/.mozilla/firefox/0h1gvx89.default/chrome/userChrome.css
	fi
    break
done