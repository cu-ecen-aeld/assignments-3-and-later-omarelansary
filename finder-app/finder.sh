#!/bin/bash
# Finder script 
# Author: Omar elAnsary
if [ $# -ne 2 ]; then 
    echo "No parameter passed."
    exit 1
else
    if ! [ -d "$1" ]; then 
        echo "Not a directory"
        exit 1
    else
        if grep -r "$2" "$1"; then
            # Find number of files and matching lines
            file_count=$(find "$1" -type f | wc -l)
            match_count=$(grep -r "$2" "$1" | wc -l)

            echo "The number of files are $file_count and the number of matching lines are $match_count"
            exit 0
        else
            echo "Not found"
            exit 1 
        fi

    fi    
fi
