#!/bin/bash

letters_var="a
b
c"

letters_heredoc=""

#read -r -d "" letters_heredoc << EOF
#a
#b
#c
#EOF

letters_herestring=""

#letters_herestring=$(cat <<< $'a\nb\nc')

echo "VAR:"
echo "$letters_var"

echo "HEREDOC:"
echo "$letters_heredoc"

echo "HERESTRING:"
echo "$letters_herestring"