#!/bin/bash

# will only help if forgot arguments
# won't help if forgot extension
if [[ $# -lt 2 ]]; then
    echo "Not enough arguments"
    echo "How to use:"
    echo " "
    echo "file_ext_change.sh < path_with/*.wildcard > < .fileExtension >"
    exit 2
fi

# used to get last parameter which is file extension
for last; do true; done
extension="$last"

# used to check if passed file extension after list wildcard
if [[ $extension != \.* ]]; then
   echo "Forgot new extension type"
   echo "How to use:"
   echo " "
   echo "file_ext_change.sh < path_with/*.wildcard > < .fileExtension >"
   exit 3
fi

# Replaces all files
for file in "$@"; do
    if [[ $file == $last ]]
    then
	# last parameter is the new extension
    	echo "DONE"
    else
	mv "$file" "${file%.*}$extension"
    fi
done
