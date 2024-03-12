#!/bin/bash
# Writer script 
# Author: Omar elAnsary

if [ $# -ne 2 ]; then 
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
dir=$(dirname "$writefile")

writestr="$2"

if [ -d "$writefile" ]; then 
    echo "$writefile is a directory, not a file"
    exit 1
fi

# Check if file exists, if not, create it
if [ ! -e "$writefile" ]; then 
    echo "Creating $writefile"
    mkdir -p "$dir"
    touch "$writefile"
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Could not write to $writefile"
    exit 1
fi

echo "Content written to $writefile successfully."

